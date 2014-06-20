.class public Lcom/lge/camera/module/FullFrameContinuousShot;
.super Lcom/lge/camera/module/Module;
.source "FullFrameContinuousShot.java"

# interfaces
.implements Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;


# instance fields
.field private freeSpace:J

.field private isStorageFull:Z

.field private isViewInitialized:Z

.field private jpeg_maximum_size:J

.field private mBurstShotProgressView:Landroid/view/View;

.field private mContinuousShotCount:I

.field private mContinuousShotStopped:Z

.field private mIsFullFrameContinuousShotRunning:Z

.field private mTakePictureLock:Ljava/lang/Object;

.field private max_count:I

.field private safeDamper:J


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 5
    .parameter "function"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0, p1}, Lcom/lge/camera/module/Module;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 36
    iput v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    .line 37
    iput-boolean v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mIsFullFrameContinuousShotRunning:Z

    .line 38
    iput-boolean v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotStopped:Z

    .line 39
    iput-boolean v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->isViewInitialized:Z

    .line 40
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    :goto_0
    iput v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->max_count:I

    .line 41
    const-wide/32 v0, 0x700000

    iput-wide v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->jpeg_maximum_size:J

    .line 42
    iput-wide v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->freeSpace:J

    .line 43
    iput-wide v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->safeDamper:J

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    .line 45
    iput-boolean v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->isStorageFull:Z

    .line 407
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mTakePictureLock:Ljava/lang/Object;

    .line 33
    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->setBurstShotView()V

    .line 34
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x6

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lge/camera/module/FullFrameContinuousShot;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/camera/module/FullFrameContinuousShot;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/camera/module/FullFrameContinuousShot;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/lge/camera/module/FullFrameContinuousShot;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput p1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    return p1
.end method

.method static synthetic access$202(Lcom/lge/camera/module/FullFrameContinuousShot;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->isViewInitialized:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lge/camera/module/FullFrameContinuousShot;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mTakePictureLock:Ljava/lang/Object;

    return-object v0
.end method

.method private getAverageSpace(II)D
    .locals 7
    .parameter "width"
    .parameter "height"

    .prologue
    .line 516
    mul-int v2, p1, p2

    int-to-double v2, v2

    const-wide v4, 0x3fd3333333333333L

    mul-double v0, v2, v4

    .line 517
    .local v0, averageSpace:D
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v4

    iget-object v5, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_camera_picturesize"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/lge/camera/util/Util;->getPictureSizeScale(ILjava/lang/String;ILjava/lang/String;)D

    move-result-wide v2

    mul-double/2addr v0, v2

    .line 525
    return-wide v0
.end method

.method private getMaxResolutionWidthHeight()[I
    .locals 4

    .prologue
    .line 529
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_picturesize"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v1

    .line 530
    .local v1, pref:Lcom/lge/camera/setting/ListPreference;
    invoke-virtual {v1}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 531
    .local v0, entryValues:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v2

    return-object v2
.end method

.method private processJpegCallbackAfter()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 409
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mContinuousShotCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    iget v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->max_count:I

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isBurstShotStop()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 411
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "Continous shot finish process!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 414
    iget v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    iget v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->max_count:I

    if-lt v2, v3, :cond_5

    .line 415
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v2

    if-nez v2, :cond_4

    .line 416
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v2

    new-instance v3, Lcom/lge/camera/module/FullFrameContinuousShot$6;

    invoke-direct {v3, p0}, Lcom/lge/camera/module/FullFrameContinuousShot$6;-><init>(Lcom/lge/camera/module/FullFrameContinuousShot;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Lcom/lge/camera/util/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 428
    :cond_1
    :goto_0
    iget v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    iget v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->max_count:I

    if-lt v2, v3, :cond_2

    .line 429
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 432
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->showSavingProgressDialog()V

    .line 433
    invoke-virtual {p0, v6}, Lcom/lge/camera/module/FullFrameContinuousShot;->setIsRunning(Z)V

    .line 434
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/lge/camera/module/FullFrameContinuousShot$7;

    invoke-direct {v2, p0}, Lcom/lge/camera/module/FullFrameContinuousShot$7;-><init>(Lcom/lge/camera/module/FullFrameContinuousShot;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 449
    .local v0, stopBurstShotThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 450
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/lge/camera/module/FullFrameContinuousShot$8;

    invoke-direct {v2, p0}, Lcom/lge/camera/module/FullFrameContinuousShot$8;-><init>(Lcom/lge/camera/module/FullFrameContinuousShot;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 492
    .local v1, waitQueueThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 494
    .end local v0           #stopBurstShotThread:Ljava/lang/Thread;
    .end local v1           #waitQueueThread:Ljava/lang/Thread;
    :cond_3
    return-void

    .line 422
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->stopBurstShotSound()V

    goto :goto_0

    .line 425
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->stopBurstShotSound()V

    goto :goto_0
.end method

.method private setLayoutParams(I)V
    .locals 11
    .parameter "degree"

    .prologue
    const/16 v10, 0x9

    const/16 v9, 0xf

    const/16 v8, 0xe

    const/16 v7, 0xc

    const/4 v6, 0x1

    .line 109
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a001a

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v3

    .line 114
    .local v3, previewPanelWidth:I
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0253

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 115
    .local v0, bottomMargin:I
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a001d

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v2

    .line 117
    .local v2, previewPanelMarginBottom:I
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 118
    .local v1, pp:Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_0

    .line 122
    invoke-static {v1}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 123
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, p1, v5}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 124
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 125
    invoke-virtual {v1, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 126
    invoke-virtual {v1, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 127
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 164
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {v1, v10, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 130
    invoke-virtual {v1, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 131
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 133
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/16 v5, 0x5a

    invoke-static {v4, p1, v5}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 134
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 135
    const/16 v4, 0xb

    invoke-virtual {v1, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 136
    invoke-virtual {v1, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 137
    add-int v4, v3, v2

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    .line 139
    :cond_4
    invoke-virtual {v1, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 140
    invoke-virtual {v1, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 141
    add-int v4, v3, v2

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    .line 143
    :cond_5
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/16 v5, 0xb4

    invoke-static {v4, p1, v5}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 144
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 145
    invoke-virtual {v1, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 146
    invoke-virtual {v1, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 147
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    .line 149
    :cond_6
    invoke-virtual {v1, v10, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 150
    invoke-virtual {v1, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 151
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    .line 154
    :cond_7
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 155
    const/16 v4, 0xb

    invoke-virtual {v1, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 156
    invoke-virtual {v1, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 157
    add-int v4, v3, v2

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    .line 159
    :cond_8
    invoke-virtual {v1, v7, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 160
    invoke-virtual {v1, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 161
    add-int v4, v3, v2

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto/16 :goto_1
.end method


# virtual methods
.method public checkCurrentShotMode()Z
    .locals 3

    .prologue
    .line 213
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_full_continuous"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleTakePictureError(I)V
    .locals 3
    .parameter "resource"

    .prologue
    const/4 v2, 0x0

    .line 498
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 499
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopBurstShotSound()V

    .line 500
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setBurstShotStop(Z)V

    .line 501
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 502
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 503
    invoke-virtual {p0, v2}, Lcom/lge/camera/module/FullFrameContinuousShot;->setIsRunning(Z)V

    .line 505
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 506
    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->removewBurstShotView()V

    .line 508
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/util/FileNamer;->setErrorFeedback(I)V

    .line 510
    invoke-direct {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->processJpegCallbackAfter()V

    .line 511
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 512
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mIsFullFrameContinuousShotRunning:Z

    return v0
.end method

.method public jpegCallbackOnPictureTaken([BLandroid/hardware/Camera;)V
    .locals 9
    .parameter "jpegData"
    .parameter "camera"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 274
    const-string v2, "CameraApp"

    const-string v3, "#### TIME_CHECK JpegPictureCallback-FullFrameContinuousShot()-start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->checkMediator()Z

    move-result v2

    if-nez v2, :cond_0

    .line 363
    :goto_0
    return-void

    .line 279
    :cond_0
    iget-boolean v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotStopped:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->isStorageFull:Z

    if-eqz v2, :cond_2

    .line 280
    :cond_1
    const-string v2, "CameraApp"

    const-string v3, "mContinoushShotStopped JpegCallBack return"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v7}, Lcom/lge/camera/ControllerFunction;->setCaptureData([B)V

    .line 285
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setImageRotationDegree(I)V

    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, isSuccessSave:Z
    if-nez p1, :cond_3

    .line 288
    const-string v2, "CameraApp"

    const-string v3, "error!! FullFrameContinuousShot-onPictureTaken (jpegData == null)"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/4 v0, 0x0

    .line 291
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useJpegPictureCallbackError()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 292
    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->jpegPictureCallbackError()V

    goto :goto_0

    .line 296
    :cond_3
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finalJpegData size ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    aget-byte v2, p1, v8

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    aget-byte v2, p1, v6

    const/16 v3, -0x28

    if-eq v2, v3, :cond_5

    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->useJpegPictureCallbackError()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 298
    const-string v2, "CameraApp"

    const-string v3, "error!! FullFrameContinuousShot abnormal jpegData stream"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->jpegPictureCallbackError()V

    goto :goto_0

    .line 302
    :cond_5
    array-length v2, p1

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->freeSpace:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_d

    .line 303
    iget v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    .line 305
    iget v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    if-ne v2, v6, :cond_6

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 306
    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f090148

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 308
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->playBurstShotShutterSound(Z)V

    .line 314
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->updateUIView()V

    .line 316
    iget v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    iget v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->max_count:I

    if-eq v2, v3, :cond_7

    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isBurstShotStop()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 317
    :cond_7
    const-string v2, "CameraApp"

    const-string v3, "FullFrameContinuous add imagesaver make thumbnail"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v3

    invoke-interface {v2, p1, v7, v3, v6}, Lcom/lge/camera/ControllerFunction;->saveImageSavers([BLandroid/graphics/Bitmap;IZ)Z

    move-result v0

    .line 319
    iput-boolean v6, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotStopped:Z

    .line 330
    :goto_2
    if-eqz v0, :cond_8

    .line 331
    iget-wide v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->freeSpace:J

    array-length v4, p1

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->freeSpace:J

    .line 332
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FullFrameContinuous free space : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->freeSpace:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_8
    if-nez v0, :cond_f

    .line 346
    const-string v2, "CameraApp"

    const-string v3, "savePicture() fail!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const v2, 0x7f0b018f

    invoke-virtual {p0, v2}, Lcom/lge/camera/module/FullFrameContinuousShot;->handleTakePictureError(I)V

    goto/16 :goto_0

    .line 310
    :cond_9
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v8}, Lcom/lge/camera/ControllerFunction;->playBurstShotShutterSound(Z)V

    goto :goto_1

    .line 321
    :cond_a
    iget-wide v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->freeSpace:J

    array-length v4, p1

    int-to-long v4, v4

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->jpeg_maximum_size:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_b

    iget v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    if-ne v2, v6, :cond_c

    .line 323
    :cond_b
    const-string v2, "CameraApp"

    const-string v3, "FullFrameContinuous add imagesaver make thumbnail"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v3

    invoke-interface {v2, p1, v7, v3, v6}, Lcom/lge/camera/ControllerFunction;->saveImageSavers([BLandroid/graphics/Bitmap;IZ)Z

    move-result v0

    goto :goto_2

    .line 326
    :cond_c
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v3

    invoke-interface {v2, p1, v7, v3, v8}, Lcom/lge/camera/ControllerFunction;->saveImageSavers([BLandroid/graphics/Bitmap;IZ)Z

    move-result v0

    goto :goto_2

    .line 336
    :cond_d
    const-string v2, "CameraApp"

    const-string v3, "savePicture() not enough memory!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iput-boolean v6, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->isStorageFull:Z

    .line 338
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v2

    if-nez v2, :cond_e

    const v1, 0x7f0b0058

    .line 340
    .local v1, stringId:I
    :goto_3
    invoke-virtual {p0, v1}, Lcom/lge/camera/module/FullFrameContinuousShot;->handleTakePictureError(I)V

    goto/16 :goto_0

    .line 338
    .end local v1           #stringId:I
    :cond_e
    const v1, 0x7f0b0056

    goto :goto_3

    .line 351
    :cond_f
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v2

    if-nez v2, :cond_10

    iget v2, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    if-ne v2, v6, :cond_10

    const-string v2, "0"

    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_zoom"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 352
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/module/FullFrameContinuousShot$3;

    invoke-direct {v3, p0}, Lcom/lge/camera/module/FullFrameContinuousShot$3;-><init>(Lcom/lge/camera/module/FullFrameContinuousShot;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 360
    :cond_10
    invoke-direct {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->processJpegCallbackAfter()V

    .line 361
    const-string v2, "CameraApp"

    const-string v3, "JpegPictureCallback()-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public removewBurstShotView()V
    .locals 4

    .prologue
    .line 168
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/module/FullFrameContinuousShot$2;

    invoke-direct {v1, p0}, Lcom/lge/camera/module/FullFrameContinuousShot$2;-><init>(Lcom/lge/camera/module/FullFrameContinuousShot;)V

    const-wide/16 v2, 0x1f4

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public setBurstShotView()V
    .locals 10

    .prologue
    const v6, 0x7f090036

    const/4 v9, 0x1

    .line 48
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v4

    if-nez v4, :cond_0

    .line 65
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f030005

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->inflateView(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    .line 54
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 55
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 56
    .local v1, bpWidth:I
    iget v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 58
    .local v0, bpHeight:I
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/BurstShotProgressBar;

    iget v5, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->max_count:I

    invoke-virtual {v4, v1, v0, v5}, Lcom/lge/camera/components/BurstShotProgressBar;->initBurstShotProgressBar(III)V

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%d"

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->max_count:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, maxCount:Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    const v5, 0x7f090037

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget v5, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    const v5, 0x7f090038

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    iput-boolean v9, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->isViewInitialized:Z

    goto :goto_0
.end method

.method public setIsRunning(Z)V
    .locals 0
    .parameter "isRunning"

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mIsFullFrameContinuousShotRunning:Z

    .line 209
    return-void
.end method

.method public startRotation(I)V
    .locals 2
    .parameter "degree"

    .prologue
    .line 196
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-direct {p0, p1}, Lcom/lge/camera/module/FullFrameContinuousShot;->setLayoutParams(I)V

    .line 201
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    const v1, 0x7f090034

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/lge/camera/components/RotateLayout;

    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    goto :goto_0
.end method

.method public stopByOnPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 385
    const-string v0, "CameraApp"

    const-string v1, "stopFullFrameContinuousShotOnPause"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/module/FullFrameContinuousShot$5;

    invoke-direct {v1, p0}, Lcom/lge/camera/module/FullFrameContinuousShot$5;-><init>(Lcom/lge/camera/module/FullFrameContinuousShot;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 393
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setBurstShotStop(Z)V

    .line 394
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 395
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 396
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopBurstShotSound()V

    .line 397
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 399
    const-string v0, "CameraApp"

    const-string v1, "BurstShot CancelPicture Start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/platform/PlatformDevice;->cancelBurstShotPictures(Landroid/hardware/Camera;)V

    .line 401
    const-string v0, "CameraApp"

    const-string v1, "BurstShot CancelPicture End"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->removewBurstShotView()V

    .line 404
    :cond_0
    invoke-virtual {p0, v2}, Lcom/lge/camera/module/FullFrameContinuousShot;->setIsRunning(Z)V

    .line 405
    return-void
.end method

.method public stopByUserAction()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 367
    const-string v0, "CameraApp"

    const-string v1, "stopFullFrameContinuousShotUserAction"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/module/FullFrameContinuousShot$4;

    invoke-direct {v1, p0}, Lcom/lge/camera/module/FullFrameContinuousShot$4;-><init>(Lcom/lge/camera/module/FullFrameContinuousShot;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 376
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setBurstShotStop(Z)V

    .line 377
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 378
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 380
    invoke-virtual {p0, v2}, Lcom/lge/camera/module/FullFrameContinuousShot;->setIsRunning(Z)V

    .line 381
    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->removewBurstShotView()V

    .line 382
    return-void
.end method

.method public takePicture()Z
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 223
    const-string v3, "CameraApp"

    const-string v4, "TIME_CHECK [Module]FullFrameContinuousShot::takePicture-start"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iput v10, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    .line 225
    iput-boolean v10, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->isStorageFull:Z

    .line 226
    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 227
    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 228
    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 229
    iput-boolean v10, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotStopped:Z

    .line 230
    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f090148

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v3

    if-nez v3, :cond_3

    .line 232
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v10}, Lcom/lge/camera/ControllerFunction;->setBurstShotStop(Z)V

    .line 236
    :goto_0
    invoke-direct {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->getMaxResolutionWidthHeight()[I

    move-result-object v1

    .line 237
    .local v1, max_resolution:[I
    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v3

    if-nez v3, :cond_4

    const-wide/32 v3, 0x100000

    :goto_1
    iput-wide v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->safeDamper:J

    .line 238
    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getFreeSpace()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->safeDamper:J

    sub-long/2addr v3, v5

    iget-object v5, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getQueueCount()I

    move-result v5

    int-to-long v5, v5

    aget v7, v1, v10

    aget v8, v1, v9

    invoke-direct {p0, v7, v8}, Lcom/lge/camera/module/FullFrameContinuousShot;->getAverageSpace(II)D

    move-result-wide v7

    double-to-long v7, v7

    mul-long/2addr v5, v7

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->freeSpace:J

    .line 239
    iget-wide v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->freeSpace:J

    cmp-long v3, v3, v11

    if-gez v3, :cond_1

    .line 240
    iput-wide v11, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->freeSpace:J

    .line 242
    :cond_1
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FullFrameContinuous free space :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->freeSpace:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Storage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v3, "CameraApp"

    const-string v4, "FullFrameContinuous #### Device().takePicture()"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v2, 0x0

    .line 246
    .local v2, shutterCallBack:Lcom/lge/camera/listeners/ShutterCallback;
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v3

    if-nez v3, :cond_2

    .line 247
    new-instance v2, Lcom/lge/camera/listeners/ShutterCallback;

    .end local v2           #shutterCallBack:Lcom/lge/camera/listeners/ShutterCallback;
    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v2, v3}, Lcom/lge/camera/listeners/ShutterCallback;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 249
    .restart local v2       #shutterCallBack:Lcom/lge/camera/listeners/ShutterCallback;
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mTakePictureLock:Ljava/lang/Object;

    monitor-enter v4

    .line 251
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v7, Lcom/lge/camera/listeners/JpegPictureCallback;

    invoke-direct {v7, p0}, Lcom/lge/camera/listeners/JpegPictureCallback;-><init>(Lcom/lge/camera/listeners/JpegPictureCallback$JpegCallbackFunction;)V

    invoke-virtual {v3, v2, v5, v6, v7}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->updateUIView()V

    .line 262
    invoke-virtual {p0, v9}, Lcom/lge/camera/module/FullFrameContinuousShot;->setIsRunning(Z)V

    .line 263
    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v10}, Lcom/lge/camera/ControllerFunction;->setPreviewing(Z)V

    .line 264
    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v9}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 265
    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v9}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionMenuForcedDisable(Z)V

    .line 266
    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v9}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 268
    const-string v3, "CameraApp"

    const-string v4, "[Module]FullFrameContinuousShot::takePicture-end"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_2
    return v9

    .line 234
    .end local v1           #max_resolution:[I
    .end local v2           #shutterCallBack:Lcom/lge/camera/listeners/ShutterCallback;
    :cond_3
    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v9}, Lcom/lge/camera/ControllerFunction;->setBurstShotStop(Z)V

    goto/16 :goto_0

    .line 237
    .restart local v1       #max_resolution:[I
    :cond_4
    const-wide/32 v3, 0x1400000

    goto/16 :goto_1

    .line 253
    .restart local v2       #shutterCallBack:Lcom/lge/camera/listeners/ShutterCallback;
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FullFrameContinuousShot - takePicture  failed :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const v3, 0x7f0b0310

    invoke-virtual {p0, v3}, Lcom/lge/camera/module/FullFrameContinuousShot;->handleTakePictureError(I)V

    .line 256
    monitor-exit v4

    goto :goto_2

    .line 258
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public updateUIView()V
    .locals 4

    .prologue
    .line 68
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportBurstShot()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update view - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mContinuousShotCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-boolean v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->isViewInitialized:Z

    if-nez v1, :cond_2

    .line 78
    invoke-virtual {p0}, Lcom/lge/camera/module/FullFrameContinuousShot;->setBurstShotView()V

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0900c1

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 83
    .local v0, vgInit:Landroid/view/ViewGroup;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 84
    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    .line 85
    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 86
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/lge/camera/module/FullFrameContinuousShot;->setLayoutParams(I)V

    .line 87
    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 90
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/module/FullFrameContinuousShot;->mBurstShotProgressView:Landroid/view/View;

    const v2, 0x7f090034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateLayout;

    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 92
    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/module/FullFrameContinuousShot$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/module/FullFrameContinuousShot$1;-><init>(Lcom/lge/camera/module/FullFrameContinuousShot;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
