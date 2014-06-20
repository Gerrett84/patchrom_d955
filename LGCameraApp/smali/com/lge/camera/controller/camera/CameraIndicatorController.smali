.class public Lcom/lge/camera/controller/camera/CameraIndicatorController;
.super Lcom/lge/camera/controller/IndicatorController;
.source "CameraIndicatorController.java"


# instance fields
.field private mPicturesRemaining:J


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 2
    .parameter "function"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/IndicatorController;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mPicturesRemaining:J

    .line 35
    return-void
.end method

.method private calculateTakenPictures()I
    .locals 9

    .prologue
    .line 490
    const/4 v8, 0x0

    .line 491
    .local v8, result:I
    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 492
    .local v1, uriImages:Landroid/net/Uri;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    .line 493
    .local v2, projection:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bucket_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getStorageBucketId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 496
    .local v3, whereClause:Ljava/lang/String;
    const/4 v0, 0x0

    .line 497
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 500
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 501
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 503
    if-eqz v6, :cond_0

    .line 504
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 509
    :cond_0
    if-eqz v6, :cond_1

    .line 510
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 511
    const/4 v6, 0x0

    .line 515
    :cond_1
    :goto_0
    return v8

    .line 506
    :catch_0
    move-exception v7

    .line 507
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v4, "CameraApp"

    const-string v5, "cursor error "

    invoke-static {v4, v5, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    if-eqz v6, :cond_1

    .line 510
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 511
    const/4 v6, 0x0

    goto :goto_0

    .line 509
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v4

    if-eqz v6, :cond_2

    .line 510
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 511
    const/4 v6, 0x0

    :cond_2
    throw v4
.end method

.method private setContinuousAndPanoramaSizeIcon(Lcom/lge/camera/components/RotateImageView;Lcom/lge/camera/setting/ListPreference;)V
    .locals 6
    .parameter "icon"
    .parameter "pref"

    .prologue
    const v5, 0x7f020083

    .line 213
    invoke-virtual {p2}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    const v2, 0x7f020080

    invoke-virtual {p1, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_free_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    const v2, 0x7f020081

    invoke-virtual {p1, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 224
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 225
    .local v1, shotModePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_8

    .line 227
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, extraInfo:Ljava/lang/String;
    const-string v2, "1536x864"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "1296x864"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "1280x768"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 231
    :cond_3
    const v2, 0x7f020070

    invoke-virtual {p1, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 232
    :cond_4
    const-string v2, "1280x960"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 233
    const v2, 0x7f020068

    invoke-virtual {p1, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 234
    :cond_5
    const-string v2, "800x480"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 235
    const v2, 0x7f020074

    invoke-virtual {p1, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 236
    :cond_6
    const-string v2, "640x480"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 237
    const v2, 0x7f020069

    invoke-virtual {p1, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 239
    :cond_7
    invoke-virtual {p1, v5}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 242
    .end local v0           #extraInfo:Ljava/lang/String;
    :cond_8
    invoke-virtual {p1, v5}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method protected getLayout()Landroid/view/View;
    .locals 2

    .prologue
    .line 561
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090057

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getPicturesRemaining()J
    .locals 2

    .prologue
    .line 545
    iget-wide v0, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mPicturesRemaining:J

    return-wide v0
.end method

.method public hideIndicator()V
    .locals 2

    .prologue
    .line 93
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isClearView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090057

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public initController()V
    .locals 5

    .prologue
    const v4, 0x7f090057

    const/4 v3, 0x0

    .line 39
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0900c9

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 40
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 45
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateRemainIndicator()V

    .line 46
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateGpsIndicator()V

    .line 47
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateFlashIndicator(ZLjava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateStorageIndicator()V

    .line 49
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateVoiceIndicator(Z)V

    .line 50
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->updateTimerIndicator()V

    .line 54
    invoke-super {p0}, Lcom/lge/camera/controller/IndicatorController;->initController()V

    .line 56
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    .line 59
    .local v0, degree:I
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090041

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 60
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09003e

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 61
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090043

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 62
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090044

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 63
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090059

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 64
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09003d

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 65
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09005a

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 66
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09003b

    invoke-interface {v1, v2, v0, v4, v3}, Lcom/lge/camera/ControllerFunction;->setDegree(IIIZ)V

    .line 72
    invoke-virtual {p0, v0, v3}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->startRotation(IZ)V

    .line 74
    .end local v0           #degree:I
    :cond_0
    return-void
.end method

.method protected invalidateParentLayout()V
    .locals 2

    .prologue
    .line 566
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090057

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 567
    return-void
.end method

.method protected isSmartModeOn()Z
    .locals 3

    .prologue
    .line 550
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "on"

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_smart_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    const/4 v0, 0x1

    .line 556
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rotateRemainTextIndicator(I)V
    .locals 11
    .parameter "degree"

    .prologue
    const/16 v10, 0xb4

    const/16 v9, 0xa

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 373
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f09005d

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 374
    .local v3, remainTextLayout:Landroid/view/View;
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f09005e

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateLayout;

    .line 376
    .local v4, remainTextLayoutRotate:Lcom/lge/camera/components/RotateLayout;
    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    const-string v6, "NO_R2L"

    invoke-virtual {v4, v6}, Lcom/lge/camera/components/RotateLayout;->setTag(Ljava/lang/Object;)V

    .line 381
    invoke-virtual {v4, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 383
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a0194

    invoke-static {v6, v7}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 384
    .local v0, marginTop:I
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a000c

    invoke-static {v6, v7}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 386
    .local v2, previewMargin:I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 387
    .local v1, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v1}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 389
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 390
    invoke-virtual {v1, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 391
    const/16 v6, 0x9

    invoke-virtual {v1, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 392
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 393
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 395
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v7

    invoke-static {v6, v7, v5}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v7

    invoke-static {v6, v7, v10}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 397
    :cond_2
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 414
    .end local v2           #previewMargin:I
    :goto_1
    const-string v5, "NO_R2L"

    invoke-virtual {v3, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 415
    invoke-virtual {v3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 399
    .restart local v2       #previewMargin:I
    :cond_3
    iget v6, p0, Lcom/lge/camera/controller/IndicatorController;->mLeftMargin:I

    if-lez v6, :cond_4

    move v2, v5

    .end local v2           #previewMargin:I
    :cond_4
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 402
    .restart local v2       #previewMargin:I
    :cond_5
    invoke-virtual {v1, v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 403
    const/16 v6, 0xb

    invoke-virtual {v1, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 404
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 405
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 407
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v7

    invoke-static {v6, v7, v5}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v7

    invoke-static {v6, v7, v10}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 409
    :cond_6
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    .line 411
    :cond_7
    iget v6, p0, Lcom/lge/camera/controller/IndicatorController;->mLeftMargin:I

    if-lez v6, :cond_8

    :goto_2
    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_8
    move v5, v2

    goto :goto_2
.end method

.method public setIndicatorForSmartMode(ZZ)V
    .locals 4
    .parameter "show"
    .parameter "animation"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 520
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->isSmartModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    const/4 p1, 0x1

    .line 524
    :cond_0
    const v3, 0x7f090041

    if-nez p1, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {p0, v3, v0, p2}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 525
    const v3, 0x7f09003e

    if-nez p1, :cond_4

    move v0, v1

    :goto_1
    invoke-virtual {p0, v3, v0, p2}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 527
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUS()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 529
    :cond_1
    const v3, 0x7f09005f

    if-nez p1, :cond_5

    move v0, v1

    :goto_2
    invoke-virtual {p0, v3, v0, p2}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 530
    const v3, 0x7f090060

    if-nez p1, :cond_6

    move v0, v1

    :goto_3
    invoke-virtual {p0, v3, v0, p2}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 533
    :cond_2
    const v0, 0x7f09005a

    if-nez p1, :cond_7

    :goto_4
    invoke-virtual {p0, v0, v1, p2}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 538
    return-void

    :cond_3
    move v0, v2

    .line 524
    goto :goto_0

    :cond_4
    move v0, v2

    .line 525
    goto :goto_1

    :cond_5
    move v0, v2

    .line 529
    goto :goto_2

    :cond_6
    move v0, v2

    .line 530
    goto :goto_3

    :cond_7
    move v1, v2

    .line 533
    goto :goto_4
.end method

.method public setPicturesRemaining(J)V
    .locals 0
    .parameter "remain"

    .prologue
    .line 541
    iput-wide p1, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mPicturesRemaining:J

    .line 542
    return-void
.end method

.method public showIndicator()V
    .locals 2

    .prologue
    const v1, 0x7f090057

    .line 78
    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isClearView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public slideIndicatorIn(Z)V
    .locals 4
    .parameter "useAnimation"

    .prologue
    const v3, 0x7f090044

    const/4 v2, 0x1

    .line 104
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 109
    :cond_0
    const v0, 0x7f09003e

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 110
    const v0, 0x7f090043

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 111
    const v0, 0x7f09005a

    invoke-virtual {p0, v0, v2, v2}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 113
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    const v0, 0x7f090048

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 120
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lge/camera/controller/IndicatorController;->mBattLevel:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_2

    .line 122
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 116
    :cond_1
    const v0, 0x7f090041

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 117
    const v0, 0x7f090060

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    goto :goto_1

    .line 124
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {p0, v3, v2, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    goto :goto_0

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public slideIndicatorOut(Z)V
    .locals 4
    .parameter "useAnimation"

    .prologue
    const v3, 0x7f090044

    const/4 v2, 0x0

    .line 139
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 144
    :cond_0
    const v0, 0x7f09003e

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 145
    const v0, 0x7f090043

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 147
    const v0, 0x7f09005a

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 149
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    const v0, 0x7f090048

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 156
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lge/camera/controller/IndicatorController;->mBattLevel:I

    const/16 v1, 0x1e

    if-le v0, v1, :cond_2

    .line 158
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 152
    :cond_1
    const v0, 0x7f090041

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 153
    const v0, 0x7f090060

    invoke-virtual {p0, v0, v2, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    goto :goto_1

    .line 160
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    invoke-virtual {p0, v3, v2, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    goto :goto_0

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public startRotation(IZ)V
    .locals 1
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 364
    invoke-super {p0, p1, p2}, Lcom/lge/camera/controller/IndicatorController;->startRotation(IZ)V

    .line 366
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->rotateRemainTextIndicator(I)V

    .line 370
    :cond_1
    return-void
.end method

.method public updateFlashIndicator(ZLjava/lang/String;)V
    .locals 9
    .parameter "useLocalSetting"
    .parameter "value"

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const v6, 0x7f090041

    const/4 v5, 0x1

    .line 312
    iget-boolean v3, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v3, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 317
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 321
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v3

    if-ne v3, v5, :cond_3

    .line 323
    :cond_2
    invoke-virtual {v0, v8}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 326
    :cond_3
    invoke-virtual {p0, v6, v5, v7}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    .line 329
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_flash"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 330
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_5

    .line 331
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 332
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResources()[I

    move-result-object v2

    .line 333
    .local v2, prefIconResource:[I
    invoke-virtual {v1, p2}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 337
    .end local v2           #prefIconResource:[I
    :goto_1
    invoke-virtual {p0, v6, v5, v7}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    goto :goto_0

    .line 335
    :cond_4
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_1

    .line 339
    :cond_5
    invoke-virtual {v0, v8}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateFocusIndicator()V
    .locals 5

    .prologue
    const v4, 0x7f09005c

    const/4 v3, 0x1

    .line 248
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 253
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 257
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 258
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    .line 263
    :goto_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_focus"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 264
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_0

    .line 265
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 260
    .end local v1           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v4, v3, v2}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    goto :goto_1
.end method

.method public updateGpsIndicator()V
    .locals 5

    .prologue
    .line 344
    iget-boolean v3, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v3, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f09003e

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 348
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 351
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_tag_location"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 352
    .local v2, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_0

    .line 353
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v1

    .line 354
    .local v1, loc:Landroid/location/Location;
    if-nez v1, :cond_2

    .line 355
    const-string v3, "CameraApp"

    const-string v4, "Location info not available"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 358
    :cond_2
    const v3, 0x7f020085

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateRemainIndicator()V
    .locals 8

    .prologue
    const/16 v5, 0x8

    const/4 v7, 0x0

    .line 419
    iget-boolean v3, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isStorageControllerInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 420
    :cond_0
    const-string v3, "CameraApp"

    const-string v4, "updateRemainIndicator return: not initialized"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_1
    :goto_0
    return-void

    .line 424
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f090060

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 425
    .local v1, remainIndicator:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f09005f

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 426
    .local v0, icon:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 427
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUS()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->isSmartModeOn()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 429
    :cond_4
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 436
    :cond_5
    iget-wide v3, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mPicturesRemaining:J

    const-wide v5, 0x174876e7ffL

    cmp-long v3, v3, v5

    if-lez v3, :cond_6

    .line 437
    const-string v3, "99999999999+"

    .line 439
    :cond_6
    iget-wide v3, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mPicturesRemaining:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_7

    .line 440
    const-string v2, ""

    .line 441
    .local v2, remainString:Ljava/lang/String;
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 450
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 443
    .end local v2           #remainString:Ljava/lang/String;
    :cond_7
    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/lge/camera/controller/camera/CameraIndicatorController;->mPicturesRemaining:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 444
    .restart local v2       #remainString:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->showCapturedImageCountInRemainIndicator()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->calculateTakenPictures()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 447
    :cond_8
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 448
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateSceneIndicator(ZLjava/lang/String;)V
    .locals 6
    .parameter "useLocalSetting"
    .parameter "value"

    .prologue
    const v5, 0x7f090045

    .line 270
    iget-boolean v3, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v3, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 276
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 280
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_scene_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 281
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_3

    .line 282
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 283
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResources()[I

    move-result-object v2

    .line 284
    .local v2, prefIconResource:[I
    invoke-virtual {v1, p2}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 288
    .end local v2           #prefIconResource:[I
    :goto_1
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v5, v3, v4}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_1

    .line 290
    :cond_3
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateSizeIndicator()V
    .locals 5

    .prologue
    .line 174
    iget-boolean v3, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v3, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f09005b

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 179
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 182
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_picturesize"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 183
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-nez v1, :cond_2

    .line 184
    const-string v3, "CameraApp"

    const-string v4, "pref is Null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 188
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 209
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 210
    goto :goto_0

    .line 192
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, shotMode:Ljava/lang/String;
    const-string v3, "shotmode_normal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "not found"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "shotmode_hdr"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "shotmode_full_continuous"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "shotmode_main_beauty"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "shotmode_clear_shot"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 201
    :cond_5
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_1

    .line 203
    :cond_6
    const-string v3, "shotmode_continuous"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "shotmode_panorama"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "shotmode_free_panorama"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 206
    :cond_7
    invoke-direct {p0, v0, v1}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setContinuousAndPanoramaSizeIcon(Lcom/lge/camera/components/RotateImageView;Lcom/lge/camera/setting/ListPreference;)V

    goto :goto_1
.end method

.method public updateTimerIndicator()V
    .locals 5

    .prologue
    const v4, 0x7f09005a

    .line 295
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 299
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 302
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_timer"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 303
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_2

    .line 304
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 305
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v4, v2, v3}, Lcom/lge/camera/controller/camera/CameraIndicatorController;->setVisibleIndicatorView(IZZ)V

    goto :goto_0

    .line 307
    :cond_2
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateVoiceIndicator(Z)V
    .locals 6
    .parameter "recog"

    .prologue
    const v5, 0x7f0200ca

    const/16 v4, 0x8

    .line 455
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v2, :cond_1

    .line 487
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090059

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 460
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 464
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v2

    if-nez v2, :cond_2

    .line 465
    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 469
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_voiceshutter"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 470
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v1, :cond_5

    .line 471
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/TelephonyUtil;->phoneInCall(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 472
    if-eqz p1, :cond_3

    .line 473
    const v2, 0x7f0200cb

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 477
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 475
    :cond_3
    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_1

    .line 479
    :cond_4
    const v2, 0x7f02005b

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 480
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 484
    :cond_5
    invoke-virtual {v0, v5}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 485
    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method
