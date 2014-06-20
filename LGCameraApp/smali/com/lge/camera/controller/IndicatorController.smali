.class public abstract Lcom/lge/camera/controller/IndicatorController;
.super Lcom/lge/camera/controller/Controller;
.source "IndicatorController.java"


# static fields
.field protected static final MAX_LEVEL:I = 0x64

.field private static mBatteryIconResources:[I


# instance fields
.field protected mBattLevel:I

.field protected mLeftMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    const/16 v0, 0x3f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/lge/camera/controller/IndicatorController;->mBatteryIconResources:[I

    return-void

    :array_0
    .array-data 0x4
        0x8at 0x0t 0x2t 0x7ft
        0x8bt 0x0t 0x2t 0x7ft
        0x8ct 0x0t 0x2t 0x7ft
        0x8dt 0x0t 0x2t 0x7ft
        0x8et 0x0t 0x2t 0x7ft
        0x8ft 0x0t 0x2t 0x7ft
        0x90t 0x0t 0x2t 0x7ft
        0x91t 0x0t 0x2t 0x7ft
        0x92t 0x0t 0x2t 0x7ft
        0x93t 0x0t 0x2t 0x7ft
        0x94t 0x0t 0x2t 0x7ft
        0x95t 0x0t 0x2t 0x7ft
        0x96t 0x0t 0x2t 0x7ft
        0x97t 0x0t 0x2t 0x7ft
        0x98t 0x0t 0x2t 0x7ft
        0x99t 0x0t 0x2t 0x7ft
        0x9at 0x0t 0x2t 0x7ft
        0x9bt 0x0t 0x2t 0x7ft
        0x9ct 0x0t 0x2t 0x7ft
        0x9dt 0x0t 0x2t 0x7ft
        0x9et 0x0t 0x2t 0x7ft
        0x9ft 0x0t 0x2t 0x7ft
        0xa0t 0x0t 0x2t 0x7ft
        0xa1t 0x0t 0x2t 0x7ft
        0xa2t 0x0t 0x2t 0x7ft
        0xa3t 0x0t 0x2t 0x7ft
        0xa4t 0x0t 0x2t 0x7ft
        0xa5t 0x0t 0x2t 0x7ft
        0xa6t 0x0t 0x2t 0x7ft
        0xa7t 0x0t 0x2t 0x7ft
        0xa8t 0x0t 0x2t 0x7ft
        0xa9t 0x0t 0x2t 0x7ft
        0xaat 0x0t 0x2t 0x7ft
        0xabt 0x0t 0x2t 0x7ft
        0xact 0x0t 0x2t 0x7ft
        0xadt 0x0t 0x2t 0x7ft
        0xaet 0x0t 0x2t 0x7ft
        0xaft 0x0t 0x2t 0x7ft
        0xb0t 0x0t 0x2t 0x7ft
        0xb1t 0x0t 0x2t 0x7ft
        0xb2t 0x0t 0x2t 0x7ft
        0xb3t 0x0t 0x2t 0x7ft
        0xb4t 0x0t 0x2t 0x7ft
        0xb5t 0x0t 0x2t 0x7ft
        0xb6t 0x0t 0x2t 0x7ft
        0xb7t 0x0t 0x2t 0x7ft
        0xb8t 0x0t 0x2t 0x7ft
        0xb9t 0x0t 0x2t 0x7ft
        0xbat 0x0t 0x2t 0x7ft
        0xbbt 0x0t 0x2t 0x7ft
        0xbct 0x0t 0x2t 0x7ft
        0xbdt 0x0t 0x2t 0x7ft
        0xbet 0x0t 0x2t 0x7ft
        0xbft 0x0t 0x2t 0x7ft
        0xc0t 0x0t 0x2t 0x7ft
        0xc1t 0x0t 0x2t 0x7ft
        0xc2t 0x0t 0x2t 0x7ft
        0xc3t 0x0t 0x2t 0x7ft
        0xc4t 0x0t 0x2t 0x7ft
        0xc5t 0x0t 0x2t 0x7ft
        0xc6t 0x0t 0x2t 0x7ft
        0xc7t 0x0t 0x2t 0x7ft
        0xc8t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 1
    .parameter "function"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 180
    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/camera/controller/IndicatorController;->mBattLevel:I

    .line 484
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/controller/IndicatorController;->mLeftMargin:I

    .line 32
    return-void
.end method


# virtual methods
.method protected abstract getLayout()Landroid/view/View;
.end method

.method protected getNewVoiceMailIcon()I
    .locals 11

    .prologue
    const/4 v4, 0x6

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 204
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v3

    if-eq v3, v4, :cond_0

    move v3, v9

    .line 252
    :goto_0
    return v3

    .line 207
    :cond_0
    iget-boolean v3, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v3, :cond_1

    move v3, v9

    .line 208
    goto :goto_0

    .line 210
    :cond_1
    const/4 v8, 0x0

    .line 212
    .local v8, vvmCount:I
    const/4 v6, 0x0

    .line 215
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v3, "content://com.lge.provider.vvm/vvmInfo"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 218
    .local v1, VvmInfoURI:Landroid/net/Uri;
    const/4 v3, 0x7

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "date_time"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "urgency"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "private"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "from_addrs"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "heard_status"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "mark_as_read"

    aput-object v4, v2, v3

    .line 221
    .local v2, projection:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 223
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 225
    if-nez v0, :cond_3

    .line 241
    if-eqz v6, :cond_2

    .line 242
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 243
    const/4 v6, 0x0

    :cond_2
    move v3, v9

    goto :goto_0

    .line 230
    :cond_3
    :try_start_1
    const-string v3, "DataBaseApp"

    const-string v4, "Accessing data from VvmInfo Table"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v3, "heard_status=\'N\' AND mark_as_read=\'n\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 232
    const/4 v0, 0x0

    .line 234
    if-eqz v6, :cond_4

    .line 235
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 236
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unread vvm message = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 241
    :cond_4
    if-eqz v6, :cond_5

    .line 242
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 243
    const/4 v6, 0x0

    .line 247
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #VvmInfoURI:Landroid/net/Uri;
    .end local v2           #projection:[Ljava/lang/String;
    :cond_5
    :goto_1
    if-eqz v8, :cond_7

    .line 248
    const-string v3, "CameraApp"

    const-string v4, "getNewVoiceMailIcon() return = 1"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v10

    .line 249
    goto/16 :goto_0

    .line 238
    :catch_0
    move-exception v7

    .line 239
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    if-eqz v6, :cond_5

    .line 242
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 243
    const/4 v6, 0x0

    goto :goto_1

    .line 241
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v3

    if-eqz v6, :cond_6

    .line 242
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 243
    const/4 v6, 0x0

    :cond_6
    throw v3

    .line 251
    :cond_7
    const-string v3, "CameraApp"

    const-string v4, "getNewVoiceMailIcon() return = 0"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v9

    .line 252
    goto/16 :goto_0
.end method

.method public getPicturesRemaining()J
    .locals 2

    .prologue
    .line 397
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public abstract hideIndicator()V
.end method

.method public initController()V
    .locals 2

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 37
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getRecentMessageType()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/controller/IndicatorController;->setMessageIndicatorReceived(IZ)V

    .line 38
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->getNewVoiceMailIcon()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/IndicatorController;->setVoiceMailIndicator(I)V

    .line 40
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/IndicatorController;->setBatteryVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getBatteryLevel()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/IndicatorController;->setBatteryIndicator(I)V

    .line 43
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->showIndicator()V

    .line 44
    return-void
.end method

.method protected invalidateParentLayout()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method protected isSmartModeOn()Z
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 384
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->getLayout()Landroid/view/View;

    move-result-object v0

    .line 386
    .local v0, indiLayout:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 387
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 390
    .end local v0           #indiLayout:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 370
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v1, :cond_1

    .line 371
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->getLayout()Landroid/view/View;

    move-result-object v0

    .line 372
    .local v0, indiLayout:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 375
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getRecentMessageType()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/controller/IndicatorController;->setMessageIndicatorReceived(IZ)V

    .line 376
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->getNewVoiceMailIcon()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/IndicatorController;->setVoiceMailIndicator(I)V

    .line 377
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getBatteryLevel()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/IndicatorController;->setBatteryIndicator(I)V

    .line 379
    .end local v0           #indiLayout:Landroid/view/View;
    :cond_1
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onResume()V

    .line 380
    return-void
.end method

.method protected rotateModeMenuIndicator(I)V
    .locals 13
    .parameter "degree"

    .prologue
    .line 407
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v11, 0x7f090047

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/components/RotateLayout;

    .line 408
    .local v5, modeMenuLayoutRotate:Lcom/lge/camera/components/RotateLayout;
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v11, 0x7f090046

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 409
    .local v4, modeMenuLayout:Landroid/view/View;
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v11, 0x7f090048

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 411
    .local v6, modeMenuText:Landroid/widget/TextView;
    if-eqz v6, :cond_0

    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    .line 482
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v10

    if-nez v10, :cond_0

    .line 419
    const-string v10, "NO_R2L"

    invoke-virtual {v5, v10}, Lcom/lge/camera/components/RotateLayout;->setTag(Ljava/lang/Object;)V

    .line 420
    invoke-virtual {v5, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 422
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a00a7

    invoke-static {v10, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 425
    .local v2, marginLeft:I
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a0197

    invoke-static {v10, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    .line 426
    .local v3, marginTop:I
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/high16 v11, 0x40c0

    invoke-static {v10, v11}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 427
    .local v7, paddingHorizon:I
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const/high16 v11, 0x4000

    invoke-static {v10, v11}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 428
    .local v8, paddingVertical:I
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->getLayout()Landroid/view/View;

    move-result-object v0

    .line 429
    .local v0, indiLayout:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 430
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 431
    .local v1, indiLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v10}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 432
    iget v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-lez v10, :cond_2

    const/4 v2, 0x0

    .line 438
    .end local v1           #indiLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 439
    .local v9, params:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v9}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 440
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v11

    const/16 v12, 0xb4

    invoke-static {v10, v11, v12}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 442
    :cond_3
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 443
    const/16 v10, 0xa

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 444
    const/16 v10, 0x9

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 445
    const/4 v10, 0x0

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 446
    iput v3, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 447
    const/4 v10, 0x0

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 448
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v7, v10, v7, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 457
    :goto_2
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v11

    const/16 v12, 0xb4

    invoke-static {v10, v11, v12}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 458
    const/4 v10, 0x5

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 480
    :goto_3
    const-string v10, "NO_R2L"

    invoke-virtual {v4, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 481
    invoke-virtual {v4, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 434
    .end local v9           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v1       #indiLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    iget v10, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-lez v10, :cond_5

    const/4 v2, 0x0

    :cond_5
    goto :goto_1

    .line 450
    .end local v1           #indiLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v9       #params:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    const/16 v10, 0xa

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 451
    const/16 v10, 0xb

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 452
    const/4 v10, 0x0

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 453
    const/4 v10, 0x0

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 454
    iput v3, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 455
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v7, v11, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    .line 460
    :cond_7
    const/4 v10, 0x3

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_3

    .line 463
    :cond_8
    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 464
    const/16 v10, 0xf

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 465
    const/16 v10, 0x9

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 466
    iput v2, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 467
    const/4 v10, 0x0

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 468
    const/4 v10, 0x0

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 469
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v8, v11, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 478
    :goto_4
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_3

    .line 471
    :cond_9
    const/16 v10, 0xe

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 472
    const/16 v10, 0xa

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 473
    const/4 v10, 0x0

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 474
    iput v2, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 475
    const/4 v10, 0x0

    iput v10, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 476
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v4, v8, v10, v8, v11}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_4
.end method

.method public rotateRemainTextIndicator(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 516
    return-void
.end method

.method public setBatteryIndicator(I)V
    .locals 3
    .parameter "batteryLevel"

    .prologue
    .line 163
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090044

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 168
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    sget-object v1, Lcom/lge/camera/controller/IndicatorController;->mBatteryIconResources:[I

    array-length v1, v1

    if-lt p1, v1, :cond_2

    .line 169
    sget-object v1, Lcom/lge/camera/controller/IndicatorController;->mBatteryIconResources:[I

    array-length v1, v1

    add-int/lit8 p1, v1, -0x1

    .line 171
    :cond_2
    sget-object v1, Lcom/lge/camera/controller/IndicatorController;->mBatteryIconResources:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 173
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/lge/camera/controller/IndicatorController;->mBattLevel:I

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isClearView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setBatteryVisibility(I)V
    .locals 4
    .parameter "batteryLevel"

    .prologue
    .line 182
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    sget-object v1, Lcom/lge/camera/controller/IndicatorController;->mBatteryIconResources:[I

    array-length v1, v1

    if-lt p1, v1, :cond_2

    .line 187
    sget-object v1, Lcom/lge/camera/controller/IndicatorController;->mBatteryIconResources:[I

    array-length v1, v1

    add-int/lit8 p1, v1, -0x1

    .line 189
    :cond_2
    if-gez p1, :cond_3

    .line 190
    const/4 p1, 0x0

    .line 192
    :cond_3
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "batteryLevel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iput p1, p0, Lcom/lge/camera/controller/IndicatorController;->mBattLevel:I

    .line 194
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090044

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 195
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    const/16 v1, 0x1e

    if-gt p1, v1, :cond_4

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isClearView()Z

    move-result v1

    if-nez v1, :cond_4

    .line 196
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 198
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIndicatorLayout(I)V
    .locals 7
    .parameter "leftMargin"

    .prologue
    const/4 v6, 0x0

    .line 486
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->getLayout()Landroid/view/View;

    move-result-object v0

    .line 487
    .local v0, indiLayout:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 488
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 489
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v2, :cond_2

    .line 490
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a001a

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 491
    .local v1, panelWidth:I
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a000c

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    .line 492
    .local v3, previewMargin:I
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isSoftKeyNavigationBarModel()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 493
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a001d

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    add-int/2addr v1, v4

    .line 495
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v4

    if-nez v4, :cond_1

    .line 496
    move p1, v3

    .line 498
    :cond_1
    iput p1, p0, Lcom/lge/camera/controller/IndicatorController;->mLeftMargin:I

    .line 499
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 500
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 501
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 502
    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 503
    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 510
    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    .end local v1           #panelWidth:I
    .end local v2           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3           #previewMargin:I
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/IndicatorController;->rotateModeMenuIndicator(I)V

    .line 514
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/IndicatorController;->rotateRemainTextIndicator(I)V

    .line 515
    return-void

    .line 505
    .restart local v1       #panelWidth:I
    .restart local v2       #params:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v3       #previewMargin:I
    :cond_3
    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 506
    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 507
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 508
    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_0
.end method

.method public setMessageIndicatorReceived(IZ)V
    .locals 4
    .parameter "msgReceived"
    .parameter "isReadAllMsg"

    .prologue
    const v3, 0x7f02005b

    .line 49
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->displayMessageIndicator()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/properties/ModelProperties;->isWifiOnlyModel(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09003d

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 60
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    if-eqz p2, :cond_3

    .line 61
    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 71
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->invalidateParentLayout()V

    goto :goto_0

    .line 63
    :cond_3
    if-nez p1, :cond_4

    .line 64
    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_1

    .line 65
    :cond_4
    const/4 v1, 0x1

    if-ne p1, v1, :cond_5

    .line 66
    const v1, 0x7f020088

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_1

    .line 67
    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 68
    const v1, 0x7f020089

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public setModeMenuVisibility(I)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 279
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v1

    if-nez v1, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090046

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 286
    .local v0, modeMenuLayout:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setPicturesRemaining(J)V
    .locals 0
    .parameter "remain"

    .prologue
    .line 520
    return-void
.end method

.method protected setVisibleIndicatorView(IZZ)V
    .locals 6
    .parameter "resId"
    .parameter "show"
    .parameter "animation"

    .prologue
    const/16 v5, 0x12c

    const/4 v4, 0x1

    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 332
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->checkMediator()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 333
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 334
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 335
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 337
    if-nez p3, :cond_4

    .line 338
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->isSmartModeOn()Z

    move-result v3

    if-nez v3, :cond_3

    .line 339
    .local v1, visible:I
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportClearView()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportKDDICleanView()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isClearView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 342
    const/4 v1, 0x4

    .line 344
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 366
    .end local v0           #view:Landroid/view/View;
    .end local v1           #visible:I
    :cond_2
    :goto_1
    return-void

    .restart local v0       #view:Landroid/view/View;
    :cond_3
    move v1, v2

    .line 338
    goto :goto_0

    .line 347
    :cond_4
    if-eqz p2, :cond_5

    .line 348
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 349
    new-instance v2, Lcom/lge/camera/controller/IndicatorController$1;

    invoke-direct {v2, p0, v0}, Lcom/lge/camera/controller/IndicatorController$1;-><init>(Lcom/lge/camera/controller/IndicatorController;Landroid/view/View;)V

    invoke-static {v0, v1, v4, v5, v2}, Lcom/lge/camera/util/Util;->startAlphaAnimation(Landroid/view/View;IIILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1

    .line 360
    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 361
    const/4 v2, 0x0

    invoke-static {v0, v4, v1, v5, v2}, Lcom/lge/camera/util/Util;->startAlphaAnimation(Landroid/view/View;IIILandroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1
.end method

.method public setVoiceMailIndicator(I)V
    .locals 3
    .parameter "msgReceived"

    .prologue
    .line 75
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->displayVisualVoiceMailIndicator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09003b

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 83
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 84
    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    .line 88
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/IndicatorController;->invalidateParentLayout()V

    goto :goto_0

    .line 85
    :cond_3
    if-nez p1, :cond_2

    .line 86
    const v1, 0x7f02005b

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public abstract showIndicator()V
.end method

.method public slideIndicatorIn(Z)V
    .locals 0
    .parameter "useAnimation"

    .prologue
    .line 536
    return-void
.end method

.method public slideIndicatorOut(Z)V
    .locals 0
    .parameter "useAnimation"

    .prologue
    .line 538
    return-void
.end method

.method public startRotation(IZ)V
    .locals 1
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 401
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p0, p1}, Lcom/lge/camera/controller/IndicatorController;->rotateModeMenuIndicator(I)V

    .line 404
    :cond_0
    return-void
.end method

.method public updateAudioIndicator()V
    .locals 0

    .prologue
    .line 532
    return-void
.end method

.method public abstract updateFlashIndicator(ZLjava/lang/String;)V
.end method

.method public updateFocusIndicator()V
    .locals 0

    .prologue
    .line 528
    return-void
.end method

.method public abstract updateGpsIndicator()V
.end method

.method public updateModeMenuIndicator()V
    .locals 4

    .prologue
    .line 311
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v2

    if-nez v2, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v2, :cond_0

    .line 317
    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/IndicatorController;->rotateModeMenuIndicator(I)V

    .line 322
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/lge/camera/controller/IndicatorController;->setModeMenuVisibility(I)V

    .line 324
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentSelectedTitle()Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, title:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090048

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 326
    .local v0, curModeView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateModeMenuIndicator(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 292
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v1

    if-nez v1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-boolean v1, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v1, :cond_0

    .line 298
    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/IndicatorController;->rotateModeMenuIndicator(I)V

    .line 302
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/IndicatorController;->setModeMenuVisibility(I)V

    .line 304
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090048

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 305
    .local v0, curModeView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateRemainIndicator()V
    .locals 0

    .prologue
    .line 522
    return-void
.end method

.method public updateSceneIndicator(ZLjava/lang/String;)V
    .locals 0
    .parameter "useLocalSetting"
    .parameter "value"

    .prologue
    .line 526
    return-void
.end method

.method public abstract updateSizeIndicator()V
.end method

.method public updateStabilizationIndicator()V
    .locals 0

    .prologue
    .line 534
    return-void
.end method

.method public updateStorageIndicator()V
    .locals 5

    .prologue
    .line 257
    iget-boolean v3, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v3, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f090043

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateImageView;

    .line 262
    .local v0, icon:Lcom/lge/camera/components/RotateImageView;
    if-eqz v0, :cond_0

    .line 266
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_storage"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 267
    .local v2, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_0

    .line 268
    const/4 v1, 0x0

    .line 269
    .local v1, iconIndex:I
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 270
    invoke-static {}, Lcom/lge/camera/properties/StorageProperties;->getEmmcName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 274
    :goto_1
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getIndicatorIconResources()[I

    move-result-object v3

    aget v3, v3, v1

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageView;->setImageResource(I)V

    goto :goto_0

    .line 272
    :cond_2
    const-string v3, "external memory"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    goto :goto_1
.end method

.method public updateTimerIndicator()V
    .locals 0

    .prologue
    .line 530
    return-void
.end method

.method public updateVoiceIndicator(Z)V
    .locals 0
    .parameter "recog"

    .prologue
    .line 524
    return-void
.end method
