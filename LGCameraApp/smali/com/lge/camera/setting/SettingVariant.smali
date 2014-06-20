.class public Lcom/lge/camera/setting/SettingVariant;
.super Ljava/lang/Object;
.source "SettingVariant.java"


# instance fields
.field private SETTING_POSITION_INDEX:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/camera/setting/SettingVariant;->SETTING_POSITION_INDEX:I

    return-void
.end method

.method private addAuCloudMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 3
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 1415
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 1417
    const-string v1, "key_au_cloud"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1418
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 1419
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeAuCloudListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1420
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 1423
    .end local v0           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_0
    return-void
.end method

.method private addAutoReviewMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 3
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 651
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportedAutoReview()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 652
    const-string v1, "back_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "front_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 654
    :cond_0
    const-string v1, "key_camera_auto_review"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 655
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_1

    .line 656
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeCameraAutoReviewListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 657
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 667
    .end local v0           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_1
    :goto_0
    return-void

    .line 660
    :cond_2
    const-string v1, "key_video_auto_review"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 661
    .restart local v0       #listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_1

    .line 662
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeVideoAutoReviewListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 663
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    goto :goto_0
.end method

.method private addDateStampMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 3
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 598
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isDateStampSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "back_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "front_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 601
    :cond_0
    const-string v1, "key_date_stamp"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 602
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_1

    .line 603
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeDateStampListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 604
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 607
    .end local v0           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_1
    return-void
.end method

.method private addFrontShotMode(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 13
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 231
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "front_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportFrontCameraModel()Z

    move-result v10

    if-nez v10, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const-string v10, "key_camera_shot_mode"

    invoke-virtual {p2, v10}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v7

    .line 239
    .local v7, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v7, :cond_0

    .line 240
    const/4 v10, 0x2

    new-array v8, v10, [I

    fill-array-data v8, :array_0

    .line 245
    .local v8, menuIconResources:[I
    const/4 v10, 0x1

    new-array v9, v10, [I

    const/4 v10, 0x0

    const v11, 0x7f02018c

    aput v11, v9, v10

    .line 249
    .local v9, settingMenuResources:[I
    const/4 v10, 0x2

    new-array v2, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0042

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    const/4 v10, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0250

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v2, v10

    .line 254
    .local v2, entries:[Ljava/lang/CharSequence;
    const/4 v10, 0x2

    new-array v3, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const-string v11, "shotmode_normal"

    aput-object v11, v3, v10

    const/4 v10, 0x1

    const-string v11, "shotmode_front_beauty"

    aput-object v11, v3, v10

    .line 259
    .local v3, entriyValues:[Ljava/lang/CharSequence;
    const/4 v10, 0x2

    new-array v4, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const-string v11, "1920x1080"

    aput-object v11, v4, v10

    const/4 v10, 0x1

    const-string v11, "1920x1080"

    aput-object v11, v4, v10

    .line 264
    .local v4, extraInfos:[Ljava/lang/CharSequence;
    const/4 v10, 0x2

    new-array v5, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const-string v11, "1920x1080"

    aput-object v11, v5, v10

    const/4 v10, 0x1

    const-string v11, "1920x1080"

    aput-object v11, v5, v10

    .line 269
    .local v5, extraInfos2:[Ljava/lang/CharSequence;
    const/4 v10, 0x2

    new-array v6, v10, [Ljava/lang/CharSequence;

    const/4 v10, 0x0

    const-string v11, "test"

    aput-object v11, v6, v10

    const/4 v10, 0x1

    const-string v11, "test"

    aput-object v11, v6, v10

    .line 274
    .local v6, extraInfos3:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualCameraSupported()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 275
    const v10, 0x7f02028e

    invoke-static {v8, v10}, Lcom/lge/camera/util/Util;->appendToIntArray([II)[I

    move-result-object v8

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0255

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/lge/camera/util/Util;->appendToCharSequenceArray([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 281
    const-string v10, "shotmode_dual_camera"

    invoke-static {v3, v10}, Lcom/lge/camera/util/Util;->appendToCharSequenceArray([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 284
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 285
    const-string v10, "1280x960"

    invoke-static {v4, v10}, Lcom/lge/camera/util/Util;->appendToCharSequenceArray([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 293
    :goto_1
    invoke-direct {p0}, Lcom/lge/camera/setting/SettingVariant;->getPreviewSizeOnScreenForDualCamera()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Lcom/lge/camera/util/Util;->appendToCharSequenceArray([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v5

    .line 296
    const-string v10, "test"

    invoke-static {v6, v10}, Lcom/lge/camera/util/Util;->appendToCharSequenceArray([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v6

    .line 301
    :cond_2
    new-instance v7, Lcom/lge/camera/setting/ListPreference;

    .end local v7           #listPref:Lcom/lge/camera/setting/ListPreference;
    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, p1, v10}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    .restart local v7       #listPref:Lcom/lge/camera/setting/ListPreference;
    const-string v10, "key_camera_shot_mode"

    invoke-virtual {v7, v10}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b00ee

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 305
    invoke-virtual {v7, v9}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 306
    const-string v10, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual {v7, v10}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 307
    const-string v10, "com.lge.camera.command.setting.SetCameraShotMode"

    invoke-virtual {v7, v10}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v7, v2}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 309
    invoke-virtual {v7, v3}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 310
    invoke-virtual {v7, v4}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos([Ljava/lang/CharSequence;)V

    .line 311
    invoke-virtual {v7, v5}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos2([Ljava/lang/CharSequence;)V

    .line 312
    invoke-virtual {v7, v6}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos3([Ljava/lang/CharSequence;)V

    .line 313
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 314
    const-string v10, "shotmode_normal"

    invoke-virtual {v7, v10}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 315
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 317
    const-string v10, "key_beautyshot"

    invoke-virtual {p2, v10}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 318
    .local v1, beautyShotPref:Lcom/lge/camera/setting/ListPreference;
    const-string v10, "key_beautyshot"

    invoke-virtual {p2, v10}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v0

    .line 319
    .local v0, beautyShotIndex:I
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->removePreference(I)V

    .line 320
    invoke-virtual {p2, v7, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChildAt(Lcom/lge/camera/setting/CameraPreference;I)V

    .line 321
    if-eqz v1, :cond_0

    .line 322
    iget v10, p0, Lcom/lge/camera/setting/SettingVariant;->SETTING_POSITION_INDEX:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {p2, v1, v10}, Lcom/lge/camera/setting/PreferenceGroup;->addChildAt(Lcom/lge/camera/setting/CameraPreference;I)V

    goto/16 :goto_0

    .line 289
    .end local v0           #beautyShotIndex:I
    .end local v1           #beautyShotPref:Lcom/lge/camera/setting/ListPreference;
    :cond_3
    const-string v10, "1280x720"

    invoke-static {v4, v10}, Lcom/lge/camera/util/Util;->appendToCharSequenceArray([Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v4

    goto :goto_1

    .line 240
    nop

    :array_0
    .array-data 0x4
        0xcbt 0x2t 0x2t 0x7ft
        0xbft 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method private addHelpMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 2
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 1239
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1240
    const-string v1, "key_help_guide"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1241
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 1242
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeHelpListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1243
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 1246
    .end local v0           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_0
    return-void
.end method

.method private addHideZoomMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 3
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 1182
    const-string v1, "back_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "back_camcorder"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1184
    :cond_0
    const-string v1, "key_zoom"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1185
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_1

    .line 1186
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeHideZoomListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1187
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 1190
    .end local v0           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_1
    return-void
.end method

.method private addManualAntiBandingMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 3
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 1120
    const-string v1, "front_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1122
    const-string v1, "key_camera_anti_banding"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1123
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 1124
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeManualAntiBandingListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1125
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 1128
    .end local v0           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_0
    return-void
.end method

.method private addPortraitPlusMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 7
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    const v6, 0x7f0b030d

    .line 492
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v3

    const/16 v4, 0x13

    if-ne v3, v4, :cond_2

    .line 493
    const-string v3, "back_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 494
    const-string v3, "key_camera_shot_mode"

    invoke-virtual {p2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 496
    .local v2, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_2

    .line 497
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 499
    .local v0, entries:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 500
    aget-object v3, v0, v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0250

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 501
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 499
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 504
    :cond_1
    invoke-virtual {v2, v0}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 513
    .end local v0           #entries:[Ljava/lang/CharSequence;
    .end local v1           #i:I
    .end local v2           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_2
    :goto_1
    return-void

    .line 506
    :cond_3
    const-string v3, "front_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 507
    const-string v3, "key_beautyshot"

    invoke-virtual {p2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 508
    .restart local v2       #listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_2

    .line 509
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private addRestoreMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 2
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 1272
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1273
    const-string v1, "key_restore"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1274
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 1275
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeRestoreListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1276
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 1279
    .end local v0           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_0
    return-void
.end method

.method private addSaveAsFlippedMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 3
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 851
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSupportFrontCameraModel()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "front_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 853
    const-string v1, "key_save_direction"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 854
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 855
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeSaveAsFlippedListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 856
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 859
    .end local v0           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_0
    return-void
.end method

.method private addShutterSoundMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 3
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 918
    const-string v1, "back_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "front_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 920
    :cond_0
    const-string v1, "key_camera_shutter_sound"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 921
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_1

    .line 922
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeShutterSoundListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 923
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 926
    .end local v0           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_1
    return-void
.end method

.method private addStorageMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 2
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 1054
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->isAllMemorySupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1055
    const-string v1, "key_storage"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1056
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 1057
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeStorageListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1058
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 1061
    .end local v0           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_0
    return-void
.end method

.method private addTagLocationMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 2
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 788
    const-string v1, "key_camera_tag_location"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 789
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 790
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeTagLocationListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 791
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 793
    :cond_0
    return-void
.end method

.method private addTimerMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 3
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 520
    const-string v1, "back_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "front_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 522
    :cond_0
    const-string v1, "key_camera_timer"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 523
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_1

    .line 524
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeTimerListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 525
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 528
    .end local v0           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_1
    return-void
.end method

.method private addVideoStabilizationMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 2
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 1450
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVideoStabilizationSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1451
    const-string v1, "key_video_stabilization"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1453
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 1454
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeVideoStabilizationListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1456
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 1459
    .end local v0           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_0
    return-void
.end method

.method private addVolumeKeyMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 2
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 1318
    const-string v1, "key_volume"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1319
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-nez v0, :cond_0

    .line 1320
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->makeVolumeKeyListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1321
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChild(Lcom/lge/camera/setting/CameraPreference;)V

    .line 1323
    :cond_0
    return-void
.end method

.method private changeFlashDefaultValue(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 3
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 1306
    const-string v1, "back_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isNoneFlashModel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1307
    const-string v1, "key_flash"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 1308
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_0

    .line 1309
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->getFlashDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 1312
    .end local v0           #listPref:Lcom/lge/camera/setting/ListPreference;
    :cond_0
    return-void
.end method

.method private changePictureSizeList(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 11
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 89
    const-string v9, "back_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "front_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    const/4 v8, 0x0

    .line 94
    .local v8, menuIcons:[I
    const/4 v6, 0x0

    .line 95
    .local v6, indicatorIcons:[I
    const/4 v1, 0x0

    .line 96
    .local v1, entries:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 97
    .local v2, entryValues:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 98
    .local v3, extraInfo:[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 99
    .local v4, extraInfo2:[Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 100
    .local v5, extraInfo3:[Ljava/lang/CharSequence;
    const-string v0, "3264x2448"

    .line 102
    .local v0, defaultValue:Ljava/lang/String;
    const-string v9, "back_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 103
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v9

    const/16 v10, 0x14

    if-eq v9, v10, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v9

    const/16 v10, 0x15

    if-eq v9, v10, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v9

    const/16 v10, 0x18

    if-eq v9, v10, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v9

    const/16 v10, 0xf

    if-ne v9, v10, :cond_0

    .line 109
    :cond_2
    const v9, 0x7f0701b0

    invoke-direct {p0, p1, v9}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v8

    .line 110
    const v9, 0x7f0701b6

    invoke-direct {p0, p1, v9}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v6

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0701b1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 112
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0701b2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0701b3

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0701b4

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0701b5

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 116
    const-string v0, "3264x2448"

    .line 124
    const-string v9, "key_camera_picturesize"

    invoke-virtual {p2, v9}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v7

    .line 125
    .local v7, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v7, :cond_0

    .line 126
    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 127
    invoke-virtual {v7, v6}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 128
    invoke-virtual {v7, v1}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {v7, v2}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {v7, v3}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos([Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {v7, v4}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos2([Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {v7, v5}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos3([Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {v7, v0}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private changeSmartMode(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 3
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 217
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "back_camera"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    const-string v1, "key_smart_mode"

    invoke-virtual {p2, v1}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v0

    .line 222
    .local v0, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v0, :cond_0

    .line 223
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    goto :goto_0
.end method

.method private changeVideoSizeList(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 11
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 1515
    const-string v9, "back_camcorder"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1516
    const-string v9, "CameraApp"

    const-string v10, "changeVideoSizeList return"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1558
    :cond_0
    :goto_0
    return-void

    .line 1519
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_0

    .line 1522
    const/4 v7, 0x0

    .line 1523
    .local v7, menuIcons:[I
    const/4 v8, 0x0

    .line 1524
    .local v8, menuSettingIcons:[I
    const/4 v5, 0x0

    .line 1525
    .local v5, indicatorIcons:[I
    const/4 v0, 0x0

    .line 1526
    .local v0, entries:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 1527
    .local v1, entryValues:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 1528
    .local v2, extraInfo:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 1529
    .local v3, extraInfo2:[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 1531
    .local v4, extraInfo3:[Ljava/lang/CharSequence;
    const v9, 0x7f07046a

    invoke-direct {p0, p1, v9}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v7

    .line 1532
    const v9, 0x7f07046c

    invoke-direct {p0, p1, v9}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v8

    .line 1534
    const v9, 0x7f070470

    invoke-direct {p0, p1, v9}, Lcom/lge/camera/setting/SettingVariant;->makeIconList(Landroid/content/Context;I)[I

    move-result-object v5

    .line 1536
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070460

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1537
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070462

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1539
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f07046e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1541
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070464

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1543
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070466

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1546
    const-string v9, "key_preview_size_on_device"

    invoke-virtual {p2, v9}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v6

    .line 1548
    .local v6, listPref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v6, :cond_0

    .line 1549
    invoke-virtual {v6, v7}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1550
    invoke-virtual {v6, v8}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1551
    invoke-virtual {v6, v5}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1552
    invoke-virtual {v6, v0}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1553
    invoke-virtual {v6, v1}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1554
    invoke-virtual {v6, v2}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos([Ljava/lang/CharSequence;)V

    .line 1555
    invoke-virtual {v6, v3}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos2([Ljava/lang/CharSequence;)V

    .line 1556
    invoke-virtual {v6, v4}, Lcom/lge/camera/setting/ListPreference;->setExtraInfos3([Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getPreviewSizeOnScreenForDualCamera()Ljava/lang/String;
    .locals 2

    .prologue
    .line 328
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 329
    const-string v0, "1280x720"

    .line 333
    :goto_0
    return-object v0

    .line 330
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 331
    const-string v0, "1280x960"

    goto :goto_0

    .line 333
    :cond_1
    const-string v0, "1920x1080"

    goto :goto_0
.end method

.method private makeAuCloudListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 9
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    const v8, 0x7f020117

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1426
    new-array v1, v6, [I

    aput v8, v1, v5

    .line 1427
    .local v1, menuIconResources:[I
    new-array v2, v6, [I

    const v4, 0x7f0203b8

    aput v4, v2, v5

    .line 1428
    .local v2, menuIconResourcesExpand:[I
    new-array v3, v6, [I

    aput v8, v3, v5

    .line 1430
    .local v3, settingMenuResources:[I
    new-instance v0, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p1, v4}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1431
    .local v0, auCloudPref:Lcom/lge/camera/setting/ListPreference;
    const-string v4, "key_au_cloud"

    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1432
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0355

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1433
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v2           #menuIconResourcesExpand:[I
    :goto_0
    invoke-virtual {v0, v2}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1434
    invoke-virtual {v0, v3}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1435
    const-string v4, "com.lge.camera.command.GotoAUCloud"

    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuCommand(Ljava/lang/String;)V

    .line 1436
    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1437
    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1438
    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1439
    invoke-virtual {v0, v6}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1441
    return-object v0

    .restart local v2       #menuIconResourcesExpand:[I
    :cond_0
    move-object v2, v1

    .line 1433
    goto :goto_0
.end method

.method private makeCameraAutoReviewListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 10
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 670
    const/4 v7, 0x4

    new-array v3, v7, [I

    fill-array-data v3, :array_0

    .line 677
    .local v3, menuIconResources:[I
    const/4 v7, 0x4

    new-array v4, v7, [I

    fill-array-data v4, :array_1

    .line 684
    .local v4, menuIconResourcesExpand:[I
    const/4 v7, 0x1

    new-array v5, v7, [I

    const/4 v7, 0x0

    const v8, 0x7f020190

    aput v8, v5, v7

    .line 688
    .local v5, settingMenuResources:[I
    const/4 v7, 0x4

    new-array v6, v7, [I

    fill-array-data v6, :array_2

    .line 695
    .local v6, settingMenuResourcesExpand:[I
    const/4 v7, 0x4

    new-array v1, v7, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0040

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b003e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    const/4 v7, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b003f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    const/4 v7, 0x3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b00ec

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v7

    .line 702
    .local v1, entries:[Ljava/lang/CharSequence;
    const/4 v7, 0x4

    new-array v2, v7, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const-string v8, "off"

    aput-object v8, v2, v7

    const/4 v7, 0x1

    const-string v8, "on"

    aput-object v8, v2, v7

    const/4 v7, 0x2

    const-string v8, "on_delay_2sec"

    aput-object v8, v2, v7

    const/4 v7, 0x3

    const-string v8, "on_delay_5sec"

    aput-object v8, v2, v7

    .line 709
    .local v2, entriyValues:[Ljava/lang/CharSequence;
    new-instance v0, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, p1, v7}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 710
    .local v0, cameraAutoReviewPref:Lcom/lge/camera/setting/ListPreference;
    const-string v7, "key_camera_auto_review"

    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0109

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 712
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v7

    if-eqz v7, :cond_0

    .end local v4           #menuIconResourcesExpand:[I
    :goto_0
    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 713
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v7

    if-eqz v7, :cond_1

    .end local v6           #settingMenuResourcesExpand:[I
    :goto_1
    invoke-virtual {v0, v6}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 714
    const-string v7, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 715
    const-string v7, "com.lge.camera.command.setting.SetCameraShowCapturedImage"

    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 716
    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 717
    invoke-virtual {v0, v2}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 718
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 719
    const-string v7, "off"

    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 720
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 722
    return-object v0

    .restart local v4       #menuIconResourcesExpand:[I
    .restart local v6       #settingMenuResourcesExpand:[I
    :cond_0
    move-object v4, v3

    .line 712
    goto :goto_0

    .end local v4           #menuIconResourcesExpand:[I
    :cond_1
    move-object v6, v5

    .line 713
    goto :goto_1

    .line 670
    nop

    :array_0
    .array-data 0x4
        0xd3t 0x2t 0x2t 0x7ft
        0xd4t 0x2t 0x2t 0x7ft
        0xd1t 0x2t 0x2t 0x7ft
        0xd2t 0x2t 0x2t 0x7ft
    .end array-data

    .line 677
    :array_1
    .array-data 0x4
        0xddt 0x3t 0x2t 0x7ft
        0xdet 0x3t 0x2t 0x7ft
        0xdbt 0x3t 0x2t 0x7ft
        0xdct 0x3t 0x2t 0x7ft
    .end array-data

    .line 688
    :array_2
    .array-data 0x4
        0xe6t 0x1t 0x2t 0x7ft
        0xe7t 0x1t 0x2t 0x7ft
        0xe4t 0x1t 0x2t 0x7ft
        0xe5t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method private makeDateStampListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 10
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 610
    new-array v3, v9, [I

    fill-array-data v3, :array_0

    .line 615
    .local v3, menuIconResources:[I
    new-array v4, v7, [I

    const v5, 0x7f020123

    aput v5, v4, v8

    .line 619
    .local v4, settingMenuResources:[I
    new-array v1, v9, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0040

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b003e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v7

    .line 624
    .local v1, entries:[Ljava/lang/CharSequence;
    new-array v2, v9, [Ljava/lang/CharSequence;

    const-string v5, "off"

    aput-object v5, v2, v8

    const-string v5, "on"

    aput-object v5, v2, v7

    .line 629
    .local v2, entriyValues:[Ljava/lang/CharSequence;
    new-instance v0, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p1, v5}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 630
    .local v0, dateStampPref:Lcom/lge/camera/setting/ListPreference;
    const-string v5, "key_date_stamp"

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 631
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0327

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v0, v3}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 633
    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 634
    const-string v5, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 635
    const-string v5, "com.lge.camera.command.setting.SetDateStamp"

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 636
    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 637
    invoke-virtual {v0, v2}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 638
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 639
    const-string v5, "off"

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 642
    return-object v0

    .line 610
    :array_0
    .array-data 0x4
        0x8bt 0x2t 0x2t 0x7ft
        0x8ct 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method private makeHelpListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 9
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    const v8, 0x7f0202bb

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1249
    new-array v1, v5, [I

    aput v8, v1, v6

    .line 1250
    .local v1, menuIconResources:[I
    new-array v2, v5, [I

    const v4, 0x7f0203d6

    aput v4, v2, v6

    .line 1251
    .local v2, menuIconResourcesExpand:[I
    new-array v3, v5, [I

    aput v8, v3, v6

    .line 1253
    .local v3, settingMenuResources:[I
    new-instance v0, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p1, v4}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1254
    .local v0, helpPref:Lcom/lge/camera/setting/ListPreference;
    const-string v4, "key_help_guide"

    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0347

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1256
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v2           #menuIconResourcesExpand:[I
    :goto_0
    invoke-virtual {v0, v2}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1257
    invoke-virtual {v0, v3}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1258
    const-string v4, "com.lge.camera.command.ShowHelpActivity"

    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuCommand(Ljava/lang/String;)V

    .line 1259
    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1260
    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1261
    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1262
    invoke-virtual {v0, v6}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1264
    return-object v0

    .restart local v2       #menuIconResourcesExpand:[I
    :cond_0
    move-object v2, v1

    .line 1256
    goto :goto_0
.end method

.method private makeHideZoomListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 7
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1193
    new-array v0, v4, [I

    const v3, 0x7f0202fc

    aput v3, v0, v5

    .line 1196
    .local v0, menuIconResources:[I
    new-array v1, v4, [I

    const v3, 0x7f020234

    aput v3, v1, v5

    .line 1200
    .local v1, settingMenuResources:[I
    new-instance v2, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1201
    .local v2, zoomPref:Lcom/lge/camera/setting/ListPreference;
    const-string v3, "key_zoom"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b011f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1203
    invoke-virtual {v2, v0}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1204
    invoke-virtual {v2, v1}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1205
    const-string v3, "com.lge.camera.command.ShowZoom"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 1206
    const-string v3, "com.lge.camera.command.setting.SetZoom"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 1207
    const-string v3, "com.lge.camera.command.ShowSettingZoom"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuCommand(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {v2, v6}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1209
    invoke-virtual {v2, v6}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1210
    invoke-virtual {v2, v6}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1211
    const-string v3, "0"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 1212
    invoke-virtual {v2, v5}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1214
    return-object v2
.end method

.method private makeIconList(Landroid/content/Context;I)[I
    .locals 4
    .parameter "context"
    .parameter "resourceID"

    .prologue
    .line 138
    const/4 v1, 0x0

    .line 139
    .local v1, tempIconList:[I
    const/4 v2, 0x0

    .line 141
    .local v2, tempTypedArray:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 142
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    new-array v1, v3, [I

    .line 144
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 145
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    aput v3, v1, v0

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    return-object v1
.end method

.method private makeManualAntiBandingListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 12
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x2

    .line 1131
    new-array v3, v9, [I

    fill-array-data v3, :array_0

    .line 1136
    .local v3, menuIconResources:[I
    new-array v4, v9, [I

    fill-array-data v4, :array_1

    .line 1141
    .local v4, menuIconResourcesExpand:[I
    new-array v5, v10, [I

    const v7, 0x7f02010d

    aput v7, v5, v11

    .line 1145
    .local v5, settingMenuResources:[I
    new-array v6, v9, [I

    fill-array-data v6, :array_2

    .line 1150
    .local v6, settingMenuResourcesExpand:[I
    new-array v1, v9, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0116

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v11

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0117

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v10

    .line 1155
    .local v1, entries:[Ljava/lang/CharSequence;
    new-array v2, v9, [Ljava/lang/CharSequence;

    const-string v7, "50"

    aput-object v7, v2, v11

    const-string v7, "60"

    aput-object v7, v2, v10

    .line 1160
    .local v2, entriyValues:[Ljava/lang/CharSequence;
    new-instance v0, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, p1, v7}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1161
    .local v0, antiBandingPref:Lcom/lge/camera/setting/ListPreference;
    const-string v7, "key_camera_anti_banding"

    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b0115

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1163
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v7

    if-eqz v7, :cond_0

    .end local v4           #menuIconResourcesExpand:[I
    :goto_0
    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1164
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v7

    if-eqz v7, :cond_1

    .end local v6           #settingMenuResourcesExpand:[I
    :goto_1
    invoke-virtual {v0, v6}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1165
    const-string v7, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 1166
    const-string v7, "com.lge.camera.command.setting.SetCameraAntibanding"

    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 1167
    invoke-virtual {v0, v1}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1168
    invoke-virtual {v0, v2}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1169
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1170
    const-string v7, "50"

    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 1171
    invoke-virtual {v0, v10}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1173
    return-object v0

    .restart local v4       #menuIconResourcesExpand:[I
    .restart local v6       #settingMenuResourcesExpand:[I
    :cond_0
    move-object v4, v3

    .line 1163
    goto :goto_0

    .end local v4           #menuIconResourcesExpand:[I
    :cond_1
    move-object v6, v5

    .line 1164
    goto :goto_1

    .line 1131
    :array_0
    .array-data 0x4
        0x81t 0x2t 0x2t 0x7ft
        0x82t 0x2t 0x2t 0x7ft
    .end array-data

    .line 1136
    :array_1
    .array-data 0x4
        0xb6t 0x3t 0x2t 0x7ft
        0xb7t 0x3t 0x2t 0x7ft
    .end array-data

    .line 1145
    :array_2
    .array-data 0x4
        0xbdt 0x1t 0x2t 0x7ft
        0xbet 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method private makeRestoreListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 9
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    const v8, 0x7f0202bc

    const/4 v7, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1282
    new-array v0, v5, [I

    aput v8, v0, v6

    .line 1283
    .local v0, menuIconResources:[I
    new-array v1, v5, [I

    const v4, 0x7f0203d8

    aput v4, v1, v6

    .line 1284
    .local v1, menuIconResourcesExpand:[I
    new-array v3, v5, [I

    aput v8, v3, v6

    .line 1286
    .local v3, settingMenuResources:[I
    new-instance v2, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p1, v4}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1287
    .local v2, restorePref:Lcom/lge/camera/setting/ListPreference;
    const-string v4, "key_restore"

    invoke-virtual {v2, v4}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1288
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0038

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1289
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v4

    if-eqz v4, :cond_0

    .end local v1           #menuIconResourcesExpand:[I
    :goto_0
    invoke-virtual {v2, v1}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1290
    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1291
    const-string v4, "com.lge.camera.command.ShowResetDialog"

    invoke-virtual {v2, v4}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuCommand(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {v2, v7}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1293
    invoke-virtual {v2, v7}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1294
    invoke-virtual {v2, v7}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1295
    invoke-virtual {v2, v6}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1297
    return-object v2

    .restart local v1       #menuIconResourcesExpand:[I
    :cond_0
    move-object v1, v0

    .line 1289
    goto :goto_0
.end method

.method private makeSaveAsFlippedListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 13
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 862
    new-array v3, v10, [I

    fill-array-data v3, :array_0

    .line 867
    .local v3, menuIconResources:[I
    new-array v4, v10, [I

    fill-array-data v4, :array_1

    .line 872
    .local v4, menuIconResourcesExpand:[I
    new-array v6, v11, [I

    const v8, 0x7f020184

    aput v8, v6, v12

    .line 876
    .local v6, settingMenuResources:[I
    new-array v7, v10, [I

    fill-array-data v7, :array_2

    .line 881
    .local v7, settingMenuResourcesExpand:[I
    new-array v0, v10, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0040

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v12

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b003e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v11

    .line 886
    .local v0, entries:[Ljava/lang/CharSequence;
    new-array v1, v10, [Ljava/lang/CharSequence;

    const-string v8, "off"

    aput-object v8, v1, v12

    const-string v8, "on"

    aput-object v8, v1, v11

    .line 891
    .local v1, entriyValues:[Ljava/lang/CharSequence;
    new-array v2, v10, [I

    fill-array-data v2, :array_3

    .line 896
    .local v2, indicatorIconResources:[I
    new-instance v5, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, p1, v8}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 897
    .local v5, saveDirectionPref:Lcom/lge/camera/setting/ListPreference;
    const-string v8, "key_save_direction"

    invoke-virtual {v5, v8}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 898
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0124

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 899
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v8

    if-eqz v8, :cond_0

    .end local v4           #menuIconResourcesExpand:[I
    :goto_0
    invoke-virtual {v5, v4}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 900
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v8

    if-eqz v8, :cond_1

    .end local v7           #settingMenuResourcesExpand:[I
    :goto_1
    invoke-virtual {v5, v7}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 901
    const-string v8, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual {v5, v8}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 902
    const-string v8, "com.lge.camera.command.setting.SetSaveDirectionMode"

    invoke-virtual {v5, v8}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 903
    invoke-virtual {v5, v0}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 904
    invoke-virtual {v5, v1}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 905
    invoke-virtual {v5, v2}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 906
    const-string v8, "on"

    invoke-virtual {v5, v8}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 907
    invoke-virtual {v5, v11}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 909
    return-object v5

    .restart local v4       #menuIconResourcesExpand:[I
    .restart local v7       #settingMenuResourcesExpand:[I
    :cond_0
    move-object v4, v3

    .line 899
    goto :goto_0

    .end local v4           #menuIconResourcesExpand:[I
    :cond_1
    move-object v7, v6

    .line 900
    goto :goto_1

    .line 862
    :array_0
    .array-data 0x4
        0xbet 0x2t 0x2t 0x7ft
        0xbdt 0x2t 0x2t 0x7ft
    .end array-data

    .line 867
    :array_1
    .array-data 0x4
        0xdat 0x3t 0x2t 0x7ft
        0xd9t 0x3t 0x2t 0x7ft
    .end array-data

    .line 876
    :array_2
    .array-data 0x4
        0xe3t 0x1t 0x2t 0x7ft
        0xe2t 0x1t 0x2t 0x7ft
    .end array-data

    .line 891
    :array_3
    .array-data 0x4
        0x5bt 0x0t 0x2t 0x7ft
        0x84t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private makeShutterSoundListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 22
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 929
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v12, v0, [I

    fill-array-data v12, :array_0

    .line 937
    .local v12, menuIconResources_off:[I
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v13, v0, [I

    fill-array-data v13, :array_1

    .line 945
    .local v13, menuIconResources_offExpand:[I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v10, v0, [I

    fill-array-data v10, :array_2

    .line 952
    .local v10, menuIconResources:[I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v11, v0, [I

    fill-array-data v11, :array_3

    .line 959
    .local v11, menuIconResourcesExpand:[I
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v15, v0, [I

    const/16 v19, 0x0

    const v20, 0x7f0201a2

    aput v20, v15, v19

    .line 963
    .local v15, settingMenuResources:[I
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_4

    .line 971
    .local v17, settingMenuResources_offExpand:[I
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_5

    .line 978
    .local v16, settingMenuResourcesExpand:[I
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v6, v0, [Ljava/lang/CharSequence;

    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b0040

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v19

    const/16 v19, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b010b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v19

    const/16 v19, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b010c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v19

    const/16 v19, 0x3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b010d

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v19

    const/16 v19, 0x4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b010e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v6, v19

    .line 986
    .local v6, entries_off:[Ljava/lang/CharSequence;
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v5, v0, [Ljava/lang/CharSequence;

    const/16 v19, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b010b

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v5, v19

    const/16 v19, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b010c

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v5, v19

    const/16 v19, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b010d

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v5, v19

    const/16 v19, 0x3

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0b010e

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v5, v19

    .line 993
    .local v5, entries:[Ljava/lang/CharSequence;
    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v8, v0, [Ljava/lang/CharSequence;

    const/16 v19, 0x0

    const-string v20, "off"

    aput-object v20, v8, v19

    const/16 v19, 0x1

    const-string v20, "0"

    aput-object v20, v8, v19

    const/16 v19, 0x2

    const-string v20, "1"

    aput-object v20, v8, v19

    const/16 v19, 0x3

    const-string v20, "2"

    aput-object v20, v8, v19

    const/16 v19, 0x4

    const-string v20, "3"

    aput-object v20, v8, v19

    .line 1001
    .local v8, entriyValues_off:[Ljava/lang/CharSequence;
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v7, v0, [Ljava/lang/CharSequence;

    const/16 v19, 0x0

    const-string v20, "0"

    aput-object v20, v7, v19

    const/16 v19, 0x1

    const-string v20, "1"

    aput-object v20, v7, v19

    const/16 v19, 0x2

    const-string v20, "2"

    aput-object v20, v7, v19

    const/16 v19, 0x3

    const-string v20, "3"

    aput-object v20, v7, v19

    .line 1011
    .local v7, entriyValues:[Ljava/lang/CharSequence;
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1012
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 1013
    move-object v9, v13

    .line 1014
    .local v9, menuIcon:[I
    move-object/from16 v14, v17

    .line 1029
    .local v14, settingMenuIcon:[I
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v19

    if-eqz v19, :cond_3

    move-object v3, v6

    .line 1030
    .local v3, entery:[Ljava/lang/CharSequence;
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/ShutterSoundProperties;->isSupportShutterSoundOff()Z

    move-result v19

    if-eqz v19, :cond_4

    move-object v4, v8

    .line 1032
    .local v4, enteryValue:[Ljava/lang/CharSequence;
    :goto_2
    new-instance v18, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1033
    .local v18, shutterSoundPref:Lcom/lge/camera/setting/ListPreference;
    const-string v19, "key_camera_shutter_sound"

    invoke-virtual/range {v18 .. v19}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1034
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b010a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1035
    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1036
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1037
    const-string v19, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual/range {v18 .. v19}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 1038
    const-string v19, "com.lge.camera.command.setting.SetCameraShutterSound"

    invoke-virtual/range {v18 .. v19}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 1039
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1040
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1041
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1042
    const-string v19, "0"

    invoke-virtual/range {v18 .. v19}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 1043
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1045
    return-object v18

    .line 1016
    .end local v3           #entery:[Ljava/lang/CharSequence;
    .end local v4           #enteryValue:[Ljava/lang/CharSequence;
    .end local v9           #menuIcon:[I
    .end local v14           #settingMenuIcon:[I
    .end local v18           #shutterSoundPref:Lcom/lge/camera/setting/ListPreference;
    :cond_0
    move-object v9, v12

    .line 1017
    .restart local v9       #menuIcon:[I
    move-object v14, v15

    .restart local v14       #settingMenuIcon:[I
    goto :goto_0

    .line 1020
    .end local v9           #menuIcon:[I
    .end local v14           #settingMenuIcon:[I
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 1021
    move-object v9, v11

    .line 1022
    .restart local v9       #menuIcon:[I
    move-object/from16 v14, v16

    .restart local v14       #settingMenuIcon:[I
    goto :goto_0

    .line 1024
    .end local v9           #menuIcon:[I
    .end local v14           #settingMenuIcon:[I
    :cond_2
    move-object v9, v10

    .line 1025
    .restart local v9       #menuIcon:[I
    move-object v14, v15

    .restart local v14       #settingMenuIcon:[I
    goto :goto_0

    :cond_3
    move-object v3, v5

    .line 1029
    goto :goto_1

    .restart local v3       #entery:[Ljava/lang/CharSequence;
    :cond_4
    move-object v4, v7

    .line 1030
    goto :goto_2

    .line 929
    nop

    :array_0
    .array-data 0x4
        0xddt 0x2t 0x2t 0x7ft
        0xd9t 0x2t 0x2t 0x7ft
        0xdat 0x2t 0x2t 0x7ft
        0xdbt 0x2t 0x2t 0x7ft
        0xdct 0x2t 0x2t 0x7ft
    .end array-data

    .line 937
    :array_1
    .array-data 0x4
        0xe7t 0x3t 0x2t 0x7ft
        0xe3t 0x3t 0x2t 0x7ft
        0xe4t 0x3t 0x2t 0x7ft
        0xe5t 0x3t 0x2t 0x7ft
        0xe6t 0x3t 0x2t 0x7ft
    .end array-data

    .line 945
    :array_2
    .array-data 0x4
        0xd9t 0x2t 0x2t 0x7ft
        0xdat 0x2t 0x2t 0x7ft
        0xdbt 0x2t 0x2t 0x7ft
        0xdct 0x2t 0x2t 0x7ft
    .end array-data

    .line 952
    :array_3
    .array-data 0x4
        0xe3t 0x3t 0x2t 0x7ft
        0xe4t 0x3t 0x2t 0x7ft
        0xe5t 0x3t 0x2t 0x7ft
        0xe6t 0x3t 0x2t 0x7ft
    .end array-data

    .line 963
    :array_4
    .array-data 0x4
        0xf0t 0x1t 0x2t 0x7ft
        0xect 0x1t 0x2t 0x7ft
        0xedt 0x1t 0x2t 0x7ft
        0xeet 0x1t 0x2t 0x7ft
        0xeft 0x1t 0x2t 0x7ft
    .end array-data

    .line 971
    :array_5
    .array-data 0x4
        0xect 0x1t 0x2t 0x7ft
        0xedt 0x1t 0x2t 0x7ft
        0xeet 0x1t 0x2t 0x7ft
        0xeft 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method private makeStorageListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 13
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 1064
    new-array v3, v10, [I

    fill-array-data v3, :array_0

    .line 1069
    .local v3, menuIconResources:[I
    new-array v4, v10, [I

    fill-array-data v4, :array_1

    .line 1074
    .local v4, menuIconResourcesExpand:[I
    new-array v5, v11, [I

    const v8, 0x7f02016b

    aput v8, v5, v12

    .line 1078
    .local v5, settingMenuResources:[I
    new-array v6, v10, [I

    fill-array-data v6, :array_2

    .line 1083
    .local v6, settingMenuResourcesExpand:[I
    new-array v0, v10, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0114

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v12

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0113

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v11

    .line 1088
    .local v0, entries:[Ljava/lang/CharSequence;
    new-array v1, v10, [Ljava/lang/CharSequence;

    const-string v8, "external memory"

    aput-object v8, v1, v12

    const-string v8, "internal storage"

    aput-object v8, v1, v11

    .line 1093
    .local v1, entriyValues:[Ljava/lang/CharSequence;
    new-array v2, v10, [I

    fill-array-data v2, :array_3

    .line 1098
    .local v2, indicatorIconResources:[I
    new-instance v7, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1099
    .local v7, storagePref:Lcom/lge/camera/setting/ListPreference;
    const-string v8, "key_storage"

    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0110

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1101
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v8

    if-eqz v8, :cond_0

    .end local v4           #menuIconResourcesExpand:[I
    :goto_0
    invoke-virtual {v7, v4}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1102
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v8

    if-eqz v8, :cond_1

    .end local v6           #settingMenuResourcesExpand:[I
    :goto_1
    invoke-virtual {v7, v6}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1103
    const-string v8, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 1104
    const-string v8, "com.lge.camera.command.setting.SetStorage"

    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 1105
    invoke-virtual {v7, v0}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1106
    invoke-virtual {v7, v1}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1107
    invoke-virtual {v7, v2}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1108
    const-string v8, "external memory"

    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 1109
    invoke-virtual {v7, v11}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1111
    return-object v7

    .restart local v4       #menuIconResourcesExpand:[I
    .restart local v6       #settingMenuResourcesExpand:[I
    :cond_0
    move-object v4, v3

    .line 1101
    goto :goto_0

    .end local v4           #menuIconResourcesExpand:[I
    :cond_1
    move-object v6, v5

    .line 1102
    goto :goto_1

    .line 1064
    :array_0
    .array-data 0x4
        0xb6t 0x2t 0x2t 0x7ft
        0xb7t 0x2t 0x2t 0x7ft
    .end array-data

    .line 1069
    :array_1
    .array-data 0x4
        0xd3t 0x3t 0x2t 0x7ft
        0xd4t 0x3t 0x2t 0x7ft
    .end array-data

    .line 1078
    :array_2
    .array-data 0x4
        0xe0t 0x1t 0x2t 0x7ft
        0xe1t 0x1t 0x2t 0x7ft
    .end array-data

    .line 1093
    :array_3
    .array-data 0x4
        0x86t 0x0t 0x2t 0x7ft
        0x5bt 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private makeTagLocationListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 13
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 796
    new-array v3, v10, [I

    fill-array-data v3, :array_0

    .line 801
    .local v3, menuIconResources:[I
    new-array v4, v10, [I

    fill-array-data v4, :array_1

    .line 806
    .local v4, menuIconResourcesExpand:[I
    new-array v5, v11, [I

    const v8, 0x7f02013c

    aput v8, v5, v12

    .line 810
    .local v5, settingMenuResources:[I
    new-array v6, v10, [I

    fill-array-data v6, :array_2

    .line 815
    .local v6, settingMenuResourcesExpand:[I
    new-array v0, v10, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0040

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v12

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b003e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v11

    .line 820
    .local v0, entries:[Ljava/lang/CharSequence;
    new-array v1, v10, [Ljava/lang/CharSequence;

    const-string v8, "off"

    aput-object v8, v1, v12

    const-string v8, "on"

    aput-object v8, v1, v11

    .line 825
    .local v1, entriyValues:[Ljava/lang/CharSequence;
    new-array v2, v10, [I

    fill-array-data v2, :array_3

    .line 830
    .local v2, indicatorIconResources:[I
    new-instance v7, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 831
    .local v7, tagLocationPref:Lcom/lge/camera/setting/ListPreference;
    const-string v8, "key_camera_tag_location"

    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b02d2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 833
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v8

    if-eqz v8, :cond_0

    .end local v4           #menuIconResourcesExpand:[I
    :goto_0
    invoke-virtual {v7, v4}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 834
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v8

    if-eqz v8, :cond_1

    .end local v6           #settingMenuResourcesExpand:[I
    :goto_1
    invoke-virtual {v7, v6}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 835
    const-string v8, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 836
    const-string v8, "com.lge.camera.command.setting.SetCameraGeoTag"

    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 837
    invoke-virtual {v7, v0}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 838
    invoke-virtual {v7, v1}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 839
    invoke-virtual {v7, v2}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 840
    const-string v8, "off"

    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 841
    invoke-virtual {v7, v11}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 843
    return-object v7

    .restart local v4       #menuIconResourcesExpand:[I
    .restart local v6       #settingMenuResourcesExpand:[I
    :cond_0
    move-object v4, v3

    .line 833
    goto :goto_0

    .end local v4           #menuIconResourcesExpand:[I
    :cond_1
    move-object v6, v5

    .line 834
    goto :goto_1

    .line 796
    :array_0
    .array-data 0x4
        0xa0t 0x2t 0x2t 0x7ft
        0xa1t 0x2t 0x2t 0x7ft
    .end array-data

    .line 801
    :array_1
    .array-data 0x4
        0xcat 0x3t 0x2t 0x7ft
        0xcbt 0x3t 0x2t 0x7ft
    .end array-data

    .line 810
    :array_2
    .array-data 0x4
        0xcct 0x1t 0x2t 0x7ft
        0xcdt 0x1t 0x2t 0x7ft
    .end array-data

    .line 825
    :array_3
    .array-data 0x4
        0x5bt 0x0t 0x2t 0x7ft
        0x84t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private makeTimerListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 11
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 531
    const/4 v8, 0x4

    new-array v3, v8, [I

    fill-array-data v3, :array_0

    .line 538
    .local v3, menuIconResources:[I
    const/4 v8, 0x4

    new-array v4, v8, [I

    fill-array-data v4, :array_1

    .line 545
    .local v4, menuIconResourcesExpand:[I
    const/4 v8, 0x1

    new-array v5, v8, [I

    const/4 v8, 0x0

    const v9, 0x7f02020e

    aput v9, v5, v8

    .line 549
    .local v5, settingMenuResources:[I
    const/4 v8, 0x4

    new-array v6, v8, [I

    fill-array-data v6, :array_2

    .line 556
    .local v6, settingMenuResourcesExpand:[I
    const/4 v8, 0x4

    new-array v0, v8, [Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0040

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b00eb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    const/4 v8, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b00ec

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    const/4 v8, 0x3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b00ed

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v8

    .line 563
    .local v0, entries:[Ljava/lang/CharSequence;
    const/4 v8, 0x4

    new-array v1, v8, [Ljava/lang/CharSequence;

    const/4 v8, 0x0

    const-string v9, "0"

    aput-object v9, v1, v8

    const/4 v8, 0x1

    const-string v9, "3"

    aput-object v9, v1, v8

    const/4 v8, 0x2

    const-string v9, "5"

    aput-object v9, v1, v8

    const/4 v8, 0x3

    const-string v9, "10"

    aput-object v9, v1, v8

    .line 570
    .local v1, entriyValues:[Ljava/lang/CharSequence;
    const/4 v8, 0x4

    new-array v2, v8, [I

    fill-array-data v2, :array_3

    .line 577
    .local v2, indicatorIconResources:[I
    new-instance v7, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 578
    .local v7, timerPref:Lcom/lge/camera/setting/ListPreference;
    const-string v8, "key_camera_timer"

    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 579
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b00e9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 580
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v8

    if-eqz v8, :cond_0

    .end local v4           #menuIconResourcesExpand:[I
    :goto_0
    invoke-virtual {v7, v4}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 581
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v8

    if-eqz v8, :cond_1

    .end local v6           #settingMenuResourcesExpand:[I
    :goto_1
    invoke-virtual {v7, v6}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 582
    const-string v8, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 583
    const-string v8, "com.lge.camera.command.setting.SetCameraTimer"

    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v7, v0}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 585
    invoke-virtual {v7, v1}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 586
    invoke-virtual {v7, v2}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 587
    const-string v8, "0"

    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 588
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 590
    return-object v7

    .restart local v4       #menuIconResourcesExpand:[I
    .restart local v6       #settingMenuResourcesExpand:[I
    :cond_0
    move-object v4, v3

    .line 580
    goto :goto_0

    .end local v4           #menuIconResourcesExpand:[I
    :cond_1
    move-object v6, v5

    .line 581
    goto :goto_1

    .line 531
    :array_0
    .array-data 0x4
        0xebt 0x2t 0x2t 0x7ft
        0xe9t 0x2t 0x2t 0x7ft
        0xeat 0x2t 0x2t 0x7ft
        0xe8t 0x2t 0x2t 0x7ft
    .end array-data

    .line 538
    :array_1
    .array-data 0x4
        0xebt 0x3t 0x2t 0x7ft
        0xe9t 0x3t 0x2t 0x7ft
        0xeat 0x3t 0x2t 0x7ft
        0xe8t 0x3t 0x2t 0x7ft
    .end array-data

    .line 549
    :array_2
    .array-data 0x4
        0xfet 0x1t 0x2t 0x7ft
        0xfct 0x1t 0x2t 0x7ft
        0xfdt 0x1t 0x2t 0x7ft
        0xfbt 0x1t 0x2t 0x7ft
    .end array-data

    .line 570
    :array_3
    .array-data 0x4
        0x5bt 0x0t 0x2t 0x7ft
        0x7ft 0x0t 0x2t 0x7ft
        0x7et 0x0t 0x2t 0x7ft
        0x7dt 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private makeVideoAutoReviewListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 10
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 729
    const/4 v7, 0x4

    new-array v2, v7, [I

    fill-array-data v2, :array_0

    .line 736
    .local v2, menuIconResources:[I
    const/4 v7, 0x4

    new-array v3, v7, [I

    fill-array-data v3, :array_1

    .line 743
    .local v3, menuIconResourcesExpand:[I
    const/4 v7, 0x1

    new-array v4, v7, [I

    const/4 v7, 0x0

    const v8, 0x7f020199

    aput v8, v4, v7

    .line 747
    .local v4, settingMenuResources:[I
    const/4 v7, 0x4

    new-array v5, v7, [I

    fill-array-data v5, :array_2

    .line 754
    .local v5, settingMenuResourcesExpand:[I
    const/4 v7, 0x4

    new-array v0, v7, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0040

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b003e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b003f

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    const/4 v7, 0x3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b00ec

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v7

    .line 761
    .local v0, entries:[Ljava/lang/CharSequence;
    const/4 v7, 0x4

    new-array v1, v7, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const-string v8, "off"

    aput-object v8, v1, v7

    const/4 v7, 0x1

    const-string v8, "on"

    aput-object v8, v1, v7

    const/4 v7, 0x2

    const-string v8, "on_delay_2sec"

    aput-object v8, v1, v7

    const/4 v7, 0x3

    const-string v8, "on_delay_5sec"

    aput-object v8, v1, v7

    .line 768
    .local v1, entriyValues:[Ljava/lang/CharSequence;
    new-instance v6, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 769
    .local v6, videoAutoReviewPref:Lcom/lge/camera/setting/ListPreference;
    const-string v7, "key_video_auto_review"

    invoke-virtual {v6, v7}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b015d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 771
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v7

    if-eqz v7, :cond_0

    .end local v3           #menuIconResourcesExpand:[I
    :goto_0
    invoke-virtual {v6, v3}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 772
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v7

    if-eqz v7, :cond_1

    .end local v5           #settingMenuResourcesExpand:[I
    :goto_1
    invoke-virtual {v6, v5}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 773
    const-string v7, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual {v6, v7}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 774
    const-string v7, "com.lge.camera.command.setting.SetVideoShowRecordedVideo"

    invoke-virtual {v6, v7}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v6, v0}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 776
    invoke-virtual {v6, v1}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 777
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 778
    const-string v7, "off"

    invoke-virtual {v6, v7}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 779
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 781
    return-object v6

    .restart local v3       #menuIconResourcesExpand:[I
    .restart local v5       #settingMenuResourcesExpand:[I
    :cond_0
    move-object v3, v2

    .line 771
    goto :goto_0

    .end local v3           #menuIconResourcesExpand:[I
    :cond_1
    move-object v5, v4

    .line 772
    goto :goto_1

    .line 729
    nop

    :array_0
    .array-data 0x4
        0xd7t 0x2t 0x2t 0x7ft
        0xd8t 0x2t 0x2t 0x7ft
        0xd5t 0x2t 0x2t 0x7ft
        0xd6t 0x2t 0x2t 0x7ft
    .end array-data

    .line 736
    :array_1
    .array-data 0x4
        0xe1t 0x3t 0x2t 0x7ft
        0xe2t 0x3t 0x2t 0x7ft
        0xdft 0x3t 0x2t 0x7ft
        0xe0t 0x3t 0x2t 0x7ft
    .end array-data

    .line 747
    :array_2
    .array-data 0x4
        0xeat 0x1t 0x2t 0x7ft
        0xebt 0x1t 0x2t 0x7ft
        0xe8t 0x1t 0x2t 0x7ft
        0xe9t 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method private makeVideoStabilizationListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 13
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 1464
    new-array v3, v10, [I

    fill-array-data v3, :array_0

    .line 1468
    .local v3, menuIconResources:[I
    new-array v4, v10, [I

    fill-array-data v4, :array_1

    .line 1471
    .local v4, menuIconResourcesExpand:[I
    new-array v5, v11, [I

    const v8, 0x7f020218

    aput v8, v5, v12

    .line 1473
    .local v5, settingMenuResources:[I
    new-array v6, v10, [I

    fill-array-data v6, :array_2

    .line 1476
    .local v6, settingMenuResourcesExpand:[I
    new-array v0, v10, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0040

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v12

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b003e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v0, v11

    .line 1480
    .local v0, entries:[Ljava/lang/CharSequence;
    new-array v1, v10, [Ljava/lang/CharSequence;

    const-string v8, "off"

    aput-object v8, v1, v12

    const-string v8, "on"

    aput-object v8, v1, v11

    .line 1482
    .local v1, entriyValues:[Ljava/lang/CharSequence;
    new-array v2, v10, [I

    fill-array-data v2, :array_3

    .line 1485
    .local v2, indicatorIconResources:[I
    new-instance v7, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1487
    .local v7, videoStabilizationPref:Lcom/lge/camera/setting/ListPreference;
    const-string v8, "key_video_stabilization"

    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1488
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0273

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1490
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v8

    if-eqz v8, :cond_0

    .end local v4           #menuIconResourcesExpand:[I
    :goto_0
    invoke-virtual {v7, v4}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1493
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v8

    if-eqz v8, :cond_1

    .end local v6           #settingMenuResourcesExpand:[I
    :goto_1
    invoke-virtual {v7, v6}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1496
    const-string v8, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 1499
    const-string v8, "com.lge.camera.command.setting.SetVideoStabilization"

    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 1502
    invoke-virtual {v7, v0}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1503
    invoke-virtual {v7, v1}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1504
    invoke-virtual {v7, v2}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1505
    const-string v8, "off"

    invoke-virtual {v7, v8}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 1506
    invoke-virtual {v7, v11}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1508
    return-object v7

    .restart local v4       #menuIconResourcesExpand:[I
    .restart local v6       #settingMenuResourcesExpand:[I
    :cond_0
    move-object v4, v3

    .line 1490
    goto :goto_0

    .end local v4           #menuIconResourcesExpand:[I
    :cond_1
    move-object v6, v5

    .line 1493
    goto :goto_1

    .line 1464
    :array_0
    .array-data 0x4
        0xedt 0x2t 0x2t 0x7ft
        0xeet 0x2t 0x2t 0x7ft
    .end array-data

    .line 1468
    :array_1
    .array-data 0x4
        0xeet 0x3t 0x2t 0x7ft
        0xeft 0x3t 0x2t 0x7ft
    .end array-data

    .line 1473
    :array_2
    .array-data 0x4
        0xfft 0x1t 0x2t 0x7ft
        0x0t 0x2t 0x2t 0x7ft
    .end array-data

    .line 1482
    :array_3
    .array-data 0x4
        0x5bt 0x0t 0x2t 0x7ft
        0x87t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private makeVolumeKeyListPreference(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)Lcom/lge/camera/setting/ListPreference;
    .locals 21
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 1326
    const-string v18, "back_camcorder"

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    const-string v18, "front_camcorder"

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    :cond_0
    const/4 v6, 0x1

    .line 1330
    .local v6, isCamcorder:Z
    :goto_0
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v8, v0, [I

    fill-array-data v8, :array_0

    .line 1334
    .local v8, menuIconResourcesCamera:[I
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v11, v0, [I

    fill-array-data v11, :array_1

    .line 1339
    .local v11, menuIconResourcesVideo:[I
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v9, v0, [I

    fill-array-data v9, :array_2

    .line 1343
    .local v9, menuIconResourcesExpandCamera:[I
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v10, v0, [I

    fill-array-data v10, :array_3

    .line 1348
    .local v10, menuIconResourcesExpandVideo:[I
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v13, v0, [I

    const/16 v18, 0x0

    const v19, 0x7f020223

    aput v19, v13, v18

    .line 1352
    .local v13, settingMenuResources:[I
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v14, v0, [I

    fill-array-data v14, :array_4

    .line 1356
    .local v14, settingMenuResourcesExpandCamera:[I
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v15, v0, [I

    fill-array-data v15, :array_5

    .line 1361
    .local v15, settingMenuResourcesExpandVideo:[I
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v3, v0, [Ljava/lang/CharSequence;

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b034c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v3, v18

    const/16 v18, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b034e

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v3, v18

    .line 1365
    .local v3, cameraEntries:[Ljava/lang/CharSequence;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b034d

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v16, v18

    const/16 v18, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0b034e

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v16, v18

    .line 1370
    .local v16, videoEntries:[Ljava/lang/CharSequence;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v5, v0, [Ljava/lang/CharSequence;

    const/16 v18, 0x0

    const-string v19, "shutter"

    aput-object v19, v5, v18

    const/16 v18, 0x1

    const-string v19, "zoom"

    aput-object v19, v5, v18

    .line 1375
    .local v5, entriyValues:[Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .line 1376
    .local v7, menuIcon:[I
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1377
    if-eqz v6, :cond_2

    move-object v7, v10

    .line 1382
    :goto_1
    const/4 v12, 0x0

    .line 1383
    .local v12, settingMenuIcon:[I
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportExpandSettings()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1384
    if-eqz v6, :cond_5

    move-object v12, v15

    .line 1389
    :goto_2
    if-eqz v6, :cond_7

    move-object/from16 v4, v16

    .line 1391
    .local v4, entries:[Ljava/lang/CharSequence;
    :goto_3
    new-instance v17, Lcom/lge/camera/setting/ListPreference;

    invoke-virtual/range {p2 .. p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/lge/camera/setting/ListPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1392
    .local v17, volumePref:Lcom/lge/camera/setting/ListPreference;
    const-string v18, "key_volume"

    invoke-virtual/range {v17 .. v18}, Lcom/lge/camera/setting/ListPreference;->setKey(Ljava/lang/String;)V

    .line 1393
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0b034b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/lge/camera/setting/ListPreference;->setTitle(Ljava/lang/String;)V

    .line 1394
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/lge/camera/setting/ListPreference;->setMenuIconResources([I)V

    .line 1395
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/lge/camera/setting/ListPreference;->setSettingMenuIconResources([I)V

    .line 1396
    const-string v18, "com.lge.camera.command.ShowQuickFunctionSettingMenu"

    invoke-virtual/range {v17 .. v18}, Lcom/lge/camera/setting/ListPreference;->setCommand(Ljava/lang/String;)V

    .line 1397
    const-string v18, "com.lge.camera.command.setting.SetVolumeKey"

    invoke-virtual/range {v17 .. v18}, Lcom/lge/camera/setting/ListPreference;->setEntryCommand(Ljava/lang/String;)V

    .line 1398
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/lge/camera/setting/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1399
    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/lge/camera/setting/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1400
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/lge/camera/setting/ListPreference;->setIndicatorIconResources([I)V

    .line 1401
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportVolumeHotKey()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1402
    const-string v18, "shutter"

    invoke-virtual/range {v17 .. v18}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    .line 1406
    :goto_4
    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/lge/camera/setting/ListPreference;->setPersist(Z)V

    .line 1408
    return-object v17

    .line 1326
    .end local v3           #cameraEntries:[Ljava/lang/CharSequence;
    .end local v4           #entries:[Ljava/lang/CharSequence;
    .end local v5           #entriyValues:[Ljava/lang/CharSequence;
    .end local v6           #isCamcorder:Z
    .end local v7           #menuIcon:[I
    .end local v8           #menuIconResourcesCamera:[I
    .end local v9           #menuIconResourcesExpandCamera:[I
    .end local v10           #menuIconResourcesExpandVideo:[I
    .end local v11           #menuIconResourcesVideo:[I
    .end local v12           #settingMenuIcon:[I
    .end local v13           #settingMenuResources:[I
    .end local v14           #settingMenuResourcesExpandCamera:[I
    .end local v15           #settingMenuResourcesExpandVideo:[I
    .end local v16           #videoEntries:[Ljava/lang/CharSequence;
    .end local v17           #volumePref:Lcom/lge/camera/setting/ListPreference;
    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_0

    .restart local v3       #cameraEntries:[Ljava/lang/CharSequence;
    .restart local v5       #entriyValues:[Ljava/lang/CharSequence;
    .restart local v6       #isCamcorder:Z
    .restart local v7       #menuIcon:[I
    .restart local v8       #menuIconResourcesCamera:[I
    .restart local v9       #menuIconResourcesExpandCamera:[I
    .restart local v10       #menuIconResourcesExpandVideo:[I
    .restart local v11       #menuIconResourcesVideo:[I
    .restart local v13       #settingMenuResources:[I
    .restart local v14       #settingMenuResourcesExpandCamera:[I
    .restart local v15       #settingMenuResourcesExpandVideo:[I
    .restart local v16       #videoEntries:[Ljava/lang/CharSequence;
    :cond_2
    move-object v7, v9

    .line 1377
    goto :goto_1

    .line 1379
    :cond_3
    if-eqz v6, :cond_4

    move-object v7, v11

    :goto_5
    goto :goto_1

    :cond_4
    move-object v7, v8

    goto :goto_5

    .restart local v12       #settingMenuIcon:[I
    :cond_5
    move-object v12, v14

    .line 1384
    goto :goto_2

    .line 1386
    :cond_6
    move-object v12, v13

    goto :goto_2

    :cond_7
    move-object v4, v3

    .line 1389
    goto :goto_3

    .line 1404
    .restart local v4       #entries:[Ljava/lang/CharSequence;
    .restart local v17       #volumePref:Lcom/lge/camera/setting/ListPreference;
    :cond_8
    const-string v18, "zoom"

    invoke-virtual/range {v17 .. v18}, Lcom/lge/camera/setting/ListPreference;->setDefaultValue(Ljava/lang/String;)V

    goto :goto_4

    .line 1330
    nop

    :array_0
    .array-data 0x4
        0xf4t 0x2t 0x2t 0x7ft
        0xf6t 0x2t 0x2t 0x7ft
    .end array-data

    .line 1334
    :array_1
    .array-data 0x4
        0xf5t 0x2t 0x2t 0x7ft
        0xf6t 0x2t 0x2t 0x7ft
    .end array-data

    .line 1339
    :array_2
    .array-data 0x4
        0xf2t 0x3t 0x2t 0x7ft
        0xf4t 0x3t 0x2t 0x7ft
    .end array-data

    .line 1343
    :array_3
    .array-data 0x4
        0xf3t 0x3t 0x2t 0x7ft
        0xf4t 0x3t 0x2t 0x7ft
    .end array-data

    .line 1352
    :array_4
    .array-data 0x4
        0x3t 0x2t 0x2t 0x7ft
        0x5t 0x2t 0x2t 0x7ft
    .end array-data

    .line 1356
    :array_5
    .array-data 0x4
        0x4t 0x2t 0x2t 0x7ft
        0x5t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method private removeAudioZoomMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 5
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 1222
    const-string v3, "back_camcorder"

    invoke-virtual {p2}, Lcom/lge/camera/setting/PreferenceGroup;->getSharedPreferenceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isHideAudiozoomMenu()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1223
    const-string v3, "key_preview_size_on_device"

    invoke-virtual {p2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 1224
    .local v1, listPref:Lcom/lge/camera/setting/ListPreference;
    const-string v3, "key_audiozoom"

    invoke-virtual {p2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v0

    .line 1225
    .local v0, audioZoomIndex:I
    const-string v3, "key_preview_size_on_device"

    invoke-virtual {p2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreferenceIndex(Ljava/lang/String;)I

    move-result v2

    .line 1226
    .local v2, videoSizeIndex:I
    invoke-virtual {p2, v0}, Lcom/lge/camera/setting/PreferenceGroup;->removePreference(I)V

    .line 1227
    if-eqz v1, :cond_0

    .line 1228
    invoke-virtual {p2, v1, v0}, Lcom/lge/camera/setting/PreferenceGroup;->addChildAt(Lcom/lge/camera/setting/CameraPreference;I)V

    .line 1230
    :cond_0
    invoke-virtual {p2, v2}, Lcom/lge/camera/setting/PreferenceGroup;->removePreference(I)V

    .line 1232
    .end local v0           #audioZoomIndex:I
    .end local v1           #listPref:Lcom/lge/camera/setting/ListPreference;
    .end local v2           #videoSizeIndex:I
    :cond_1
    return-void
.end method


# virtual methods
.method public makePreferenceVariant(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    .locals 3
    .parameter "context"
    .parameter "mPreferenceGroup"

    .prologue
    .line 27
    if-nez p2, :cond_0

    .line 83
    :goto_0
    return-void

    .line 31
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->changePictureSizeList(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->changeSmartMode(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addFrontShotMode(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addPortraitPlusMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addTimerMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addDateStampMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addAutoReviewMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addTagLocationMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addSaveAsFlippedMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addShutterSoundMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addVolumeKeyMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addStorageMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addManualAntiBandingMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addHideZoomMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->removeAudioZoomMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addHelpMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addRestoreMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->changeFlashDefaultValue(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addAuCloudMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->addVideoStabilizationMenu(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/setting/SettingVariant;->changeVideoSizeList(Landroid/content/Context;Lcom/lge/camera/setting/PreferenceGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "Preference add exception : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
