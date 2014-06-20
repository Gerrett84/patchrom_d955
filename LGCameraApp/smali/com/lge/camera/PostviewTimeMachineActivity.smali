.class public Lcom/lge/camera/PostviewTimeMachineActivity;
.super Lcom/lge/camera/ShotPostviewActivity;
.source "PostviewTimeMachineActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;
    }
.end annotation


# static fields
.field private static final GALLERY_LAUNCH_CLICKED:I = 0x1

.field private static final GALLERY_LAUNCH_NONE:I = 0x0

.field private static final GALLERY_LAUNCH_STARTED:I = 0x2

.field private static final TIMEMACHINE_EFFECT_NOT_START:I = 0x0

.field private static final TIMEMACHINE_SAVE_EFFECT:I = 0x1

.field private static final TIMEMACHINE_SAVE_NORMAL:I = 0x2


# instance fields
.field private anim:Landroid/view/animation/Animation;

.field private isAnimationRunning:Z

.field private isGalleryLaunchingState:I

.field private mAnimationTimer:Ljava/util/Timer;

.field private mCurrentMakingImageIndex:I

.field private mFirstTimeMachineDataSize:J

.field private mMakeGalleryImageThread:Ljava/lang/Thread;

.field private mOnTimemachineImageClickListener:Landroid/view/View$OnClickListener;

.field private mScheduledTime:I

.field private mSelectedIndexs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

.field private mTimeMachineAnimationRunnable:Ljava/lang/Runnable;

.field private mTimeMachineShotCount:I

.field private mTimemachineMode:I

.field private mTimerCount:I

.field private outSize:Landroid/graphics/Point;

.field private saveButtonDone:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 57
    invoke-direct {p0}, Lcom/lge/camera/ShotPostviewActivity;-><init>()V

    .line 62
    iput v2, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mFirstTimeMachineDataSize:J

    .line 65
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->outSize:Landroid/graphics/Point;

    .line 347
    iput-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    .line 392
    iput-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    .line 393
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentMakingImageIndex:I

    .line 614
    new-instance v0, Lcom/lge/camera/PostviewTimeMachineActivity$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewTimeMachineActivity$4;-><init>(Lcom/lge/camera/PostviewTimeMachineActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mOnTimemachineImageClickListener:Landroid/view/View$OnClickListener;

    .line 1068
    new-instance v0, Lcom/lge/camera/PostviewTimeMachineActivity$5;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewTimeMachineActivity$5;-><init>(Lcom/lge/camera/PostviewTimeMachineActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->saveButtonDone:Ljava/lang/Runnable;

    .line 1076
    iput-boolean v2, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isAnimationRunning:Z

    .line 1147
    iput v2, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I

    .line 1148
    iput v2, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimeMachineShotCount:I

    .line 1149
    iput-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mAnimationTimer:Ljava/util/Timer;

    .line 1150
    iput-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->anim:Landroid/view/animation/Animation;

    .line 1151
    const/high16 v0, 0x40a0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mScheduledTime:I

    .line 1202
    new-instance v0, Lcom/lge/camera/PostviewTimeMachineActivity$8;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewTimeMachineActivity$8;-><init>(Lcom/lge/camera/PostviewTimeMachineActivity;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimeMachineAnimationRunnable:Ljava/lang/Runnable;

    .line 1422
    iput v2, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isGalleryLaunchingState:I

    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/PostviewTimeMachineActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->startTimeMachineShotAnimation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/lge/camera/PostviewTimeMachineActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewTimeMachineActivity;->selectThumbItem(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/lge/camera/PostviewTimeMachineActivity;ZZ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/PostviewTimeMachineActivity;->saveSelectedImages(ZZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1202(Lcom/lge/camera/PostviewTimeMachineActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isAnimationRunning:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/lge/camera/PostviewTimeMachineActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimeMachineAnimationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lge/camera/PostviewTimeMachineActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mScheduledTime:I

    return v0
.end method

.method static synthetic access$1402(Lcom/lge/camera/PostviewTimeMachineActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mScheduledTime:I

    return p1
.end method

.method static synthetic access$1408(Lcom/lge/camera/PostviewTimeMachineActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mScheduledTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mScheduledTime:I

    return v0
.end method

.method static synthetic access$1500(Lcom/lge/camera/PostviewTimeMachineActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I

    return v0
.end method

.method static synthetic access$1510(Lcom/lge/camera/PostviewTimeMachineActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/lge/camera/PostviewTimeMachineActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewTimeMachineActivity;->stopTimeMachineAnimationAndGotoMultiSelectMode(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/lge/camera/PostviewTimeMachineActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewTimeMachineActivity;->timeMachineClockMinuteAnimation(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/lge/camera/PostviewTimeMachineActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewTimeMachineActivity;->timeMachineClockSecAnimation(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/lge/camera/PostviewTimeMachineActivity;ZII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/camera/PostviewTimeMachineActivity;->setThumbListVisible(ZII)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/camera/PostviewTimeMachineActivity;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->outSize:Landroid/graphics/Point;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lge/camera/PostviewTimeMachineActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->anim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/PostviewTimeMachineActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentMakingImageIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/lge/camera/PostviewTimeMachineActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentMakingImageIndex:I

    return p1
.end method

.method static synthetic access$310(Lcom/lge/camera/PostviewTimeMachineActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentMakingImageIndex:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentMakingImageIndex:I

    return v0
.end method

.method static synthetic access$400(Lcom/lge/camera/PostviewTimeMachineActivity;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/PostviewTimeMachineActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/camera/PostviewTimeMachineActivity;Landroid/graphics/drawable/BitmapDrawable;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/PostviewTimeMachineActivity;->changeThumbnailImages(Landroid/graphics/drawable/BitmapDrawable;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/lge/camera/PostviewTimeMachineActivity;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mAnimationTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/camera/PostviewTimeMachineActivity;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewTimeMachineActivity;->refreshLoadCapturedImages(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/lge/camera/PostviewTimeMachineActivity;)Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    return-object v0
.end method

.method private addSecureImageList(Landroid/net/Uri;)V
    .locals 1
    .parameter "resultUri"

    .prologue
    .line 817
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->useSecureLockImage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->isGuestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AppControlUtil;->checkGalleryEnabledOnGuestMode(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 821
    :cond_0
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/util/SecureImageUtil;->addSecureLockImageUri(Landroid/net/Uri;)V

    .line 823
    :cond_1
    return-void
.end method

.method private addTimemachineImageView(Landroid/graphics/drawable/BitmapDrawable;IIII)V
    .locals 9
    .parameter "bmpD"
    .parameter "index"
    .parameter "thumbWidth"
    .parameter "thumbHeight"
    .parameter "leftMargin"

    .prologue
    const/4 v6, 0x1

    .line 545
    new-instance v0, Lcom/lge/camera/postview/GalleryThumbnailLayout;

    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move v2, p2

    move-object v3, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/postview/GalleryThumbnailLayout;-><init>(Landroid/content/Context;ILandroid/graphics/drawable/BitmapDrawable;IIZ)V

    .line 547
    .local v0, galThumb:Lcom/lge/camera/postview/GalleryThumbnailLayout;
    iget-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mOnTimemachineImageClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 549
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v7, p3, p4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 550
    .local v7, param:Landroid/widget/RelativeLayout$LayoutParams;
    mul-int v1, p2, p3

    add-int/lit8 v2, p2, 0x1

    mul-int/2addr v2, p5

    add-int/2addr v1, v2

    iput v1, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 552
    iget v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCurrentSelectedIndex:I

    if-ne p2, v1, :cond_0

    .line 553
    invoke-virtual {v0, v6}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setSelected(Z)V

    .line 556
    :cond_0
    const v1, 0x7f09013c

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 557
    .local v8, timeMachineGalleryImage:Landroid/view/View;
    if-eqz v8, :cond_1

    .line 558
    check-cast v8, Landroid/widget/RelativeLayout;

    .end local v8           #timeMachineGalleryImage:Landroid/view/View;
    invoke-virtual {v8, v0, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 560
    :cond_1
    return-void
.end method

.method private changeThumbnailImages(Landroid/graphics/drawable/BitmapDrawable;I)V
    .locals 1
    .parameter "bmpD"
    .parameter "index"

    .prologue
    .line 471
    new-instance v0, Lcom/lge/camera/PostviewTimeMachineActivity$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/lge/camera/PostviewTimeMachineActivity$3;-><init>(Lcom/lge/camera/PostviewTimeMachineActivity;ILandroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 486
    return-void
.end method

.method private checkValidateOneShotImage()Z
    .locals 7

    .prologue
    .line 944
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v3

    .line 945
    .local v3, oneShotSaveDir:Ljava/lang/String;
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getSaveFileName()Ljava/lang/String;

    move-result-object v1

    .line 946
    .local v1, oneShotFileName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 947
    .local v2, oneShotFullFilePath:Ljava/lang/String;
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkValidateOneShotImage path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 950
    .local v0, oneShotFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 951
    const-string v4, "CameraApp"

    const-string v5, "checkValidateOneShotImage File exist."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    const/4 v4, 0x1

    .line 955
    :goto_0
    return v4

    .line 954
    :cond_0
    const-string v4, "CameraApp"

    const-string v5, "checkValidateOneShotImage file is not exist."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private checkValidateTimeMachineImage()Z
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 959
    const/4 v7, 0x0

    .local v7, totalCount:I
    const/4 v8, 0x0

    .line 960
    .local v8, validateCount:I
    const/4 v3, 0x0

    .line 961
    .local v3, tempFile:Ljava/io/File;
    const/4 v5, 0x0

    .line 963
    .local v5, tempFilePath:Ljava/lang/String;
    const v9, 0x7f09013c

    :try_start_0
    invoke-virtual {p0, v9}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 965
    .local v6, timeMachineGalleryImage:Landroid/view/View;
    iget-object v9, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v9}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_2

    if-eqz v6, :cond_2

    iget-object v9, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    if-eqz v9, :cond_2

    .line 970
    iget-object v9, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v9}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 971
    const-string v9, "CameraApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "validateImage() image list count = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    const/4 v2, 0x0

    .local v2, index:I
    move-object v4, v3

    .line 973
    .end local v3           #tempFile:Ljava/io/File;
    .local v4, tempFile:Ljava/io/File;
    :goto_0
    :try_start_1
    iget-object v9, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v9}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 974
    iget-object v9, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v9}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 975
    if-eqz v5, :cond_1

    .line 976
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 977
    .end local v4           #tempFile:Ljava/io/File;
    .restart local v3       #tempFile:Ljava/io/File;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 978
    const-string v9, "CameraApp"

    const-string v11, "found deleted image!"

    invoke-static {v9, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    iget-object v9, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v9}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 980
    iget-object v9, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 981
    move-object v0, v6

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v9, v0

    invoke-virtual {v9, v2}, Landroid/widget/RelativeLayout;->removeViewAt(I)V

    .line 990
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 991
    const-string v9, "CameraApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tot = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " / index = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " / validateCount = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    if-ne v7, v8, :cond_3

    .line 996
    :goto_2
    iget-object v9, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v9}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v7

    .line 997
    if-nez v7, :cond_2

    move v9, v10

    .line 1004
    .end local v2           #index:I
    .end local v6           #timeMachineGalleryImage:Landroid/view/View;
    :goto_3
    return v9

    .line 983
    .restart local v2       #index:I
    .restart local v6       #timeMachineGalleryImage:Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 986
    .end local v3           #tempFile:Ljava/io/File;
    .restart local v4       #tempFile:Ljava/io/File;
    :cond_1
    :try_start_3
    iget-object v9, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v9}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 987
    iget-object v9, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 988
    move-object v0, v6

    check-cast v0, Landroid/widget/RelativeLayout;

    move-object v9, v0

    invoke-virtual {v9, v2}, Landroid/widget/RelativeLayout;->removeViewAt(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v3, v4

    .end local v4           #tempFile:Ljava/io/File;
    .restart local v3       #tempFile:Ljava/io/File;
    goto :goto_1

    .line 1001
    .end local v2           #index:I
    :cond_2
    const/4 v9, 0x1

    goto :goto_3

    .line 1002
    .end local v6           #timeMachineGalleryImage:Landroid/view/View;
    :catch_0
    move-exception v1

    .line 1003
    .local v1, e:Ljava/lang/Exception;
    :goto_4
    const-string v9, "CameraApp"

    const-string v11, "Exception!"

    invoke-static {v9, v11, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v9, v10

    .line 1004
    goto :goto_3

    .line 1002
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #tempFile:Ljava/io/File;
    .restart local v2       #index:I
    .restart local v4       #tempFile:Ljava/io/File;
    .restart local v6       #timeMachineGalleryImage:Landroid/view/View;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4           #tempFile:Ljava/io/File;
    .restart local v3       #tempFile:Ljava/io/File;
    goto :goto_4

    :cond_3
    move-object v4, v3

    .end local v3           #tempFile:Ljava/io/File;
    .restart local v4       #tempFile:Ljava/io/File;
    goto/16 :goto_0

    :cond_4
    move-object v3, v4

    .end local v4           #tempFile:Ljava/io/File;
    .restart local v3       #tempFile:Ljava/io/File;
    goto :goto_2
.end method

.method private clickTimeMachineSave()V
    .locals 3

    .prologue
    .line 1026
    const-string v1, "CameraApp"

    const-string v2, "Time machine sava clicked."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->checkPauseAndAutoReview()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1043
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_3

    .line 1032
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getCountThumbnailSelected()I

    move-result v0

    .line 1033
    .local v0, nSelectedCount:I
    if-lez v0, :cond_2

    .line 1034
    iget-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->saveButtonDone:Ljava/lang/Runnable;

    invoke-direct {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->gallerySlideDownAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1036
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mToast:Lcom/lge/camera/postview/PostViewToast;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewToast;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1037
    const v1, 0x7f0b0181

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->toast(Ljava/lang/String;)V

    goto :goto_0

    .line 1041
    .end local v0           #nSelectedCount:I
    :cond_3
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->showCheckBox(Z)V

    goto :goto_0
.end method

.method private deleteOriginalShotFile()V
    .locals 8

    .prologue
    .line 891
    iget-object v5, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    .line 892
    .local v4, oneShotSaveDir:Ljava/lang/String;
    iget-object v5, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getSaveFileName()Ljava/lang/String;

    move-result-object v2

    .line 893
    .local v2, oneShotFileName:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 894
    .local v3, oneShotFullFilePath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 896
    .local v1, oneShotFile:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 897
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 898
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 900
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 901
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 902
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getSavedUri()Landroid/net/Uri;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/ImageManager;->deleteImage(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 903
    iget-object v5, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->useSecureLockImage()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 904
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getSavedUri()Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v7}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/lge/camera/util/SecureImageUtil;->removeSecureLockUri(Landroid/net/Uri;I)V

    .line 908
    :cond_1
    return-void
.end method

.method private deleteSelectedImage(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 911
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TimeMachineImage"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 912
    .local v1, title:Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 914
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/PostviewTimeMachineActivity;->deleteImage(Ljava/lang/String;Landroid/net/Uri;)I

    .line 915
    iget-object v2, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    :cond_0
    :goto_0
    return-void

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v3, "Exception:"

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private doGalleryLaunching()V
    .locals 9

    .prologue
    .line 1451
    const-string v6, "CameraApp"

    const-string v7, "doGalleryLaunching-start."

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    iget-object v6, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getSavedUri()Landroid/net/Uri;

    move-result-object v5

    .line 1455
    .local v5, upToDateUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1456
    .local v4, pm:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 1459
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    const-string v6, "com.android.gallery3d"

    const/16 v7, 0x80

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1466
    const/4 v3, 0x0

    .line 1468
    .local v3, intent:Landroid/content/Intent;
    iget-boolean v6, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v6, :cond_0

    .line 1469
    const/4 v6, 0x5

    iget-object v7, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v7}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/lge/camera/PostviewTimeMachineActivity;->onCreateDialog(II)V

    .line 1481
    .end local v3           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 1460
    :catch_0
    move-exception v0

    .line 1461
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "CameraApp"

    const-string v7, "Gallery is not founded:"

    invoke-static {v6, v7, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1462
    const/4 v6, 0x0

    iput v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isGalleryLaunchingState:I

    goto :goto_0

    .line 1471
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #intent:Landroid/content/Intent;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v6, "com.android.camera.action.REVIEW"

    invoke-direct {v3, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1472
    .restart local v3       #intent:Landroid/content/Intent;
    const/high16 v6, 0x400

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1474
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewTimeMachineActivity;->startActivity(Landroid/content/Intent;)V

    .line 1475
    const/4 v6, 0x2

    iput v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isGalleryLaunchingState:I

    .line 1476
    const-string v6, "CameraApp"

    const-string v7, "doGalleryLaunching-started."

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1477
    :catch_1
    move-exception v1

    .line 1478
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "review fail! uri:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private gallerySlideDownAnimation(Ljava/lang/Runnable;)V
    .locals 5
    .parameter "action"

    .prologue
    .line 1078
    const-string v3, "CameraApp"

    const-string v4, "gallerySlideDownAnimation"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    const v3, 0x7f090139

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1081
    .local v2, galleryView:Landroid/view/View;
    iget-boolean v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isAnimationRunning:Z

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    .line 1103
    .end local v2           #galleryView:Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1084
    .restart local v2       #galleryView:Landroid/view/View;
    :cond_1
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1085
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f040003

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 1086
    .local v1, gallerySlideDownAnimation:Landroid/view/animation/Animation;
    if-eqz v1, :cond_2

    .line 1087
    new-instance v3, Lcom/lge/camera/PostviewTimeMachineActivity$6;

    invoke-direct {v3, p0, p1}, Lcom/lge/camera/PostviewTimeMachineActivity$6;-><init>(Lcom/lge/camera/PostviewTimeMachineActivity;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1097
    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1099
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isAnimationRunning:Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1100
    .end local v1           #gallerySlideDownAnimation:Landroid/view/animation/Animation;
    .end local v2           #galleryView:Landroid/view/View;
    :catch_0
    move-exception v0

    .line 1101
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "CameraApp"

    const-string v4, "NullPointerException : "

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getCountThumbnailSelected()I
    .locals 6

    .prologue
    .line 643
    const/4 v2, 0x0

    .line 644
    .local v2, nCount:I
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 645
    .local v3, size:I
    const/4 v0, 0x0

    .line 646
    .local v0, galleryThumb:Lcom/lge/camera/postview/GalleryThumbnailLayout;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 647
    const v4, 0x7f09013c

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .end local v0           #galleryThumb:Lcom/lge/camera/postview/GalleryThumbnailLayout;
    check-cast v0, Lcom/lge/camera/postview/GalleryThumbnailLayout;

    .line 648
    .restart local v0       #galleryThumb:Lcom/lge/camera/postview/GalleryThumbnailLayout;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->getChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 649
    add-int/lit8 v2, v2, 0x1

    .line 646
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    :cond_1
    return v2
.end method

.method private makeTimeMachineGalleryImages()V
    .locals 6

    .prologue
    .line 395
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-nez v3, :cond_0

    .line 396
    const-string v3, "CameraApp"

    const-string v4, "Postview : postview parameters get fail."

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 401
    .local v0, imageListSize:I
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 402
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020465

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 403
    .local v2, tempBmp:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 404
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 408
    .end local v1           #index:I
    .end local v2           #tempBmp:Landroid/graphics/Bitmap;
    :cond_1
    const/4 v3, 0x4

    iput v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mCurrentSelectedIndex:I

    .line 410
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/lge/camera/PostviewTimeMachineActivity$2;

    invoke-direct {v4, p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity$2;-><init>(Lcom/lge/camera/PostviewTimeMachineActivity;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    .line 466
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private makeTimemachineGalleryLayout()V
    .locals 8

    .prologue
    .line 527
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-nez v0, :cond_1

    .line 528
    const-string v0, "CameraApp"

    const-string v1, "Postview : postview parameters get fail."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_0
    return-void

    .line 532
    :cond_1
    const v0, 0x7f09013c

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 533
    .local v7, timeMachineGalleryImage:Landroid/view/View;
    if-eqz v7, :cond_0

    .line 534
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 535
    .local v6, imageListSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 536
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    invoke-virtual {v0}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->getThumbWidth()I

    move-result v3

    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    invoke-virtual {v0}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->getThumbHeight()I

    move-result v4

    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    invoke-virtual {v0}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->getLeftMargin()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/PostviewTimeMachineActivity;->addTimemachineImageView(Landroid/graphics/drawable/BitmapDrawable;IIII)V

    .line 535
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private refreshLoadCapturedImages(I)Z
    .locals 7
    .parameter "selectedIndex"

    .prologue
    const/4 v4, 0x0

    .line 563
    iget-object v5, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-nez v5, :cond_0

    .line 564
    const-string v5, "CameraApp"

    const-string v6, "TMC Postview : postview parameters get fail."

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    :goto_0
    return v4

    .line 567
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 569
    .local v2, listSize:I
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TMC refreshLoadCapturedImages : listSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    if-lez v2, :cond_2

    .line 571
    const v4, 0x7f090124

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 574
    .local v3, postview:Landroid/widget/ImageView;
    if-eqz v3, :cond_2

    .line 575
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, p1, :cond_1

    .line 576
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 577
    .local v0, bmpD:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 579
    .end local v0           #bmpD:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    .end local v3           #postview:Landroid/widget/ImageView;
    :cond_2
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 581
    .restart local v3       #postview:Landroid/widget/ImageView;
    :catch_0
    move-exception v1

    .line 582
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v5, "TMC setCapturedImageView Exception!"

    invoke-static {v4, v5, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private reloadTimemachineGalleryLayout()V
    .locals 9

    .prologue
    .line 489
    const-string v4, "CameraApp"

    const-string v5, "reloadTimemachineGalleryLayout."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-nez v4, :cond_1

    .line 491
    const-string v4, "CameraApp"

    const-string v5, "Postview : postview parameters get fail."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    :cond_0
    return-void

    .line 495
    :cond_1
    const v4, 0x7f09013c

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 498
    .local v3, timeMachineGalleryImage:Landroid/view/View;
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    if-eqz v4, :cond_0

    .line 502
    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 503
    .local v2, imageListSize:I
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    invoke-virtual {v4}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->setThumbnailSizeInfo()V

    .line 505
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->setGalleryLayout()V

    .line 507
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 508
    const/4 v0, 0x0

    .line 509
    .local v0, galleryThumb:Lcom/lge/camera/postview/GalleryThumbnailLayout;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 510
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .end local v0           #galleryThumb:Lcom/lge/camera/postview/GalleryThumbnailLayout;
    check-cast v0, Lcom/lge/camera/postview/GalleryThumbnailLayout;

    .line 511
    .restart local v0       #galleryThumb:Lcom/lge/camera/postview/GalleryThumbnailLayout;
    if-eqz v0, :cond_2

    .line 513
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    invoke-virtual {v4}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->getThumbWidth()I

    move-result v4

    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    invoke-virtual {v5}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->getThumbHeight()I

    move-result v5

    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    invoke-virtual {v6}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->getThumbWidth()I

    move-result v6

    mul-int/2addr v6, v1

    add-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    invoke-virtual {v8}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->getLeftMargin()I

    move-result v8

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    invoke-virtual {v0, v4, v5, v6}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setThumbSize(III)V

    .line 516
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    invoke-virtual {v5}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->getThumbWidth()I

    move-result v5

    iget-object v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    invoke-virtual {v6}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->getThumbHeight()I

    move-result v6

    invoke-virtual {v0, v4, v5, v6}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setThumbBitmap(Landroid/graphics/drawable/BitmapDrawable;II)V

    .line 519
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setVisibility(I)V

    .line 509
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private renameForTimeMachineShot()V
    .locals 23

    .prologue
    .line 825
    const-string v2, "CameraApp"

    const-string v4, "renameForTimeMachineShot-start"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v2, :cond_3

    .line 829
    :try_start_0
    const-string v15, ".jpg"

    .line 830
    .local v15, fileExt:Ljava/lang/String;
    const/16 v21, 0x0

    .line 831
    .local v21, tempFilePath:Ljava/lang/String;
    const/16 v18, 0x0

    .line 832
    .local v18, newFilePath:Ljava/lang/String;
    const/4 v10, 0x0

    .line 833
    .local v10, newFileDir:Ljava/lang/String;
    const/4 v3, 0x0

    .line 834
    .local v3, newFileName:Ljava/lang/String;
    const/16 v22, 0x0

    .line 835
    .local v22, tempfile:Ljava/io/File;
    const/16 v17, 0x0

    .line 836
    .local v17, newFile:Ljava/io/File;
    const/16 v19, 0x0

    .line 837
    .local v19, resultUri:Landroid/net/Uri;
    const/4 v12, 0x0

    .line 839
    .local v12, degree:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 840
    .local v20, size:I
    const/16 v16, 0x0

    .local v16, index:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v21

    .line 842
    invoke-static/range {v21 .. v21}, Lcom/lge/camera/util/ExifUtil;->getExifOrientationDegree(Ljava/lang/String;)I

    move-result v12

    .line 843
    new-instance v22, Ljava/io/File;

    .end local v22           #tempfile:Ljava/io/File;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 845
    .restart local v22       #tempfile:Ljava/io/File;
    if-nez v16, :cond_2

    .line 846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getSaveFileName()Ljava/lang/String;

    move-result-object v3

    .line 852
    :goto_1
    const-string v2, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newFileName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v10

    .line 855
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 856
    new-instance v17, Ljava/io/File;

    .end local v17           #newFile:Ljava/io/File;
    invoke-direct/range {v17 .. v18}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 858
    .restart local v17       #newFile:Ljava/io/File;
    const-string v2, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rename TMS tempFilePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    const-string v2, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rename TMS newFilePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 862
    .local v13, dir:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 863
    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 865
    :cond_0
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 866
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 867
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getLocationLatitude()D

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v8}, Lcom/lge/camera/postview/PostViewParameters;->getLocationLongitude()D

    move-result-wide v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static/range {v2 .. v12}, Lcom/lge/camera/util/ImageManager;->insertToContentResolver(Landroid/content/ContentResolver;Ljava/lang/String;JDDLjava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v19

    .line 873
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 874
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastPicture(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 875
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "key_uplus_box"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "on"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/lge/camera/util/Util;->requestUpBoxBackupPhoto(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 878
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->addSecureImageList(Landroid/net/Uri;)V

    .line 840
    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .line 848
    .end local v13           #dir:Ljava/io/File;
    :cond_2
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .end local v3           #newFileName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorage()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/lge/camera/util/FileNamer;->getFileName(Landroid/content/Context;IILjava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .restart local v3       #newFileName:Ljava/lang/String;
    goto/16 :goto_1

    .line 882
    .end local v3           #newFileName:Ljava/lang/String;
    .end local v10           #newFileDir:Ljava/lang/String;
    .end local v12           #degree:I
    .end local v15           #fileExt:Ljava/lang/String;
    .end local v16           #index:I
    .end local v17           #newFile:Ljava/io/File;
    .end local v18           #newFilePath:Ljava/lang/String;
    .end local v19           #resultUri:Landroid/net/Uri;
    .end local v20           #size:I
    .end local v21           #tempFilePath:Ljava/lang/String;
    .end local v22           #tempfile:Ljava/io/File;
    :catch_0
    move-exception v14

    .line 883
    .local v14, e:Ljava/lang/Exception;
    const-string v2, "CameraApp"

    const-string v4, "Exception!"

    invoke-static {v2, v4, v14}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 884
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->finish()V

    .line 887
    .end local v14           #e:Ljava/lang/Exception;
    :cond_3
    const-string v2, "CameraApp"

    const-string v4, "renameForTimeMachineShot-end"

    invoke-static {v2, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    return-void
.end method

.method private saveSelectedImages(ZZ)I
    .locals 6
    .parameter "deleteAll"
    .parameter "deleteOriginalShotFile"

    .prologue
    .line 772
    const-string v3, "CameraApp"

    const-string v4, "saveSelectedImages()"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 775
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 777
    :try_start_0
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    .line 785
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 787
    .local v2, uriListSize:I
    add-int/lit8 v1, v2, -0x1

    .line 788
    .local v1, index:I
    :goto_1
    if-ltz v1, :cond_4

    .line 789
    if-eqz p1, :cond_1

    .line 790
    invoke-direct {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->deleteSelectedImage(I)V

    .line 791
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 800
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 778
    .end local v1           #index:I
    .end local v2           #uriListSize:I
    :catch_0
    move-exception v0

    .line 779
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "CameraApp"

    const-string v4, "InterruptedException : "

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 793
    .end local v0           #e:Ljava/lang/InterruptedException;
    .restart local v1       #index:I
    .restart local v2       #uriListSize:I
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 794
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TMC delete index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    invoke-direct {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->deleteSelectedImage(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 810
    .end local v1           #index:I
    .end local v2           #uriListSize:I
    :catch_1
    move-exception v0

    .line 811
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "ArrayIndexOutOfBoundsException!"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 812
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->finish()V

    .line 814
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    return v3

    .line 797
    .restart local v1       #index:I
    .restart local v2       #uriListSize:I
    :cond_3
    :try_start_3
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 803
    :cond_4
    if-eqz p2, :cond_5

    .line 804
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->deleteOriginalShotFile()V

    .line 807
    :cond_5
    if-nez p1, :cond_2

    .line 808
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->renameForTimeMachineShot()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method

.method private selectThumbItem(I)V
    .locals 5
    .parameter "selectIndex"

    .prologue
    .line 589
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 590
    .local v2, size:I
    const/4 v0, 0x0

    .line 591
    .local v0, galleryThumb:Lcom/lge/camera/postview/GalleryThumbnailLayout;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 592
    const v3, 0x7f09013c

    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .end local v0           #galleryThumb:Lcom/lge/camera/postview/GalleryThumbnailLayout;
    check-cast v0, Lcom/lge/camera/postview/GalleryThumbnailLayout;

    .line 593
    .restart local v0       #galleryThumb:Lcom/lge/camera/postview/GalleryThumbnailLayout;
    if-eqz v0, :cond_0

    .line 594
    if-ne p1, v1, :cond_2

    .line 595
    iput p1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCurrentSelectedIndex:I

    .line 596
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setSelected(Z)V

    .line 598
    iget v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 599
    invoke-virtual {v0}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setChecked()V

    .line 600
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 601
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 591
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 603
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 607
    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setSelected(Z)V

    goto :goto_1

    .line 611
    :cond_3
    invoke-direct {p0, p1}, Lcom/lge/camera/PostviewTimeMachineActivity;->refreshLoadCapturedImages(I)Z

    .line 612
    return-void
.end method

.method private setClockAnimationView(Z)V
    .locals 9
    .parameter "isSet"

    .prologue
    const/4 v8, 0x1

    .line 1311
    const v6, 0x7f090135

    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1312
    .local v2, clockAniView:Landroid/view/View;
    const v6, 0x7f090136

    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1313
    .local v3, clockBgView:Landroid/widget/ImageView;
    const v6, 0x7f090137

    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1314
    .local v4, clockNeedleMinuteView:Landroid/widget/ImageView;
    const v6, 0x7f090138

    invoke-virtual {p0, v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1316
    .local v5, clockNeedleSecView:Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    iget-object v6, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-eqz v6, :cond_1

    .line 1318
    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1319
    invoke-virtual {v5}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1321
    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1323
    invoke-static {v3}, Lcom/lge/camera/util/Util;->clearImageViewDrawableOnly(Landroid/widget/ImageView;)V

    .line 1324
    invoke-static {v4}, Lcom/lge/camera/util/Util;->clearImageViewDrawableOnly(Landroid/widget/ImageView;)V

    .line 1325
    invoke-static {v5}, Lcom/lge/camera/util/Util;->clearImageViewDrawableOnly(Landroid/widget/ImageView;)V

    .line 1327
    if-eqz p1, :cond_3

    .line 1328
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1329
    const v6, 0x7f020266

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1330
    const v6, 0x7f020267

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1331
    const v6, 0x7f020268

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1333
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1334
    .local v1, clockAniParam:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v6, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostviewOrientationInfo;->getOrientation()I

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v6}, Lcom/lge/camera/postview/PostviewOrientationInfo;->getOrientation()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a01be

    invoke-static {v6, v7}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 1338
    .local v0, clockAniMarginTop:I
    :goto_0
    invoke-static {v1}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 1339
    const/16 v6, 0xa

    invoke-virtual {v1, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1340
    const/16 v6, 0xb

    invoke-virtual {v1, v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1341
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1342
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1350
    .end local v0           #clockAniMarginTop:I
    .end local v1           #clockAniParam:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    :goto_1
    return-void

    .line 1334
    .restart local v1       #clockAniParam:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0a01bf

    invoke-static {v6, v7}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 1345
    .end local v1           #clockAniParam:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-static {v3}, Lcom/lge/camera/util/Util;->clearImageViewBackgroundDrawable(Landroid/widget/ImageView;)V

    .line 1346
    invoke-static {v4}, Lcom/lge/camera/util/Util;->clearImageViewBackgroundDrawable(Landroid/widget/ImageView;)V

    .line 1347
    invoke-static {v5}, Lcom/lge/camera/util/Util;->clearImageViewBackgroundDrawable(Landroid/widget/ImageView;)V

    goto :goto_1
.end method

.method private setGalleryLayout()V
    .locals 5

    .prologue
    .line 311
    const v3, 0x7f09013b

    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 314
    .local v2, timeMachineGalleryScroll:Landroid/view/View;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-eqz v3, :cond_0

    .line 318
    const/4 v1, 0x0

    .line 321
    .local v1, galleryWidth:I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 323
    .local v0, galleryParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->outSize:Landroid/graphics/Point;

    invoke-virtual {v3, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 336
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->outSize:Landroid/graphics/Point;

    iget v1, v3, Landroid/graphics/Point;->x:I

    .line 338
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 339
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 345
    .end local v0           #galleryParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #galleryWidth:I
    :cond_0
    return-void
.end method

.method private setThumbListVisible(ZII)V
    .locals 7
    .parameter "all"
    .parameter "index"
    .parameter "visible"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 656
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 657
    .local v2, size:I
    const/4 v0, 0x0

    .line 658
    .local v0, galleryThumb:Lcom/lge/camera/postview/GalleryThumbnailLayout;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_4

    .line 659
    const v3, 0x7f09013c

    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .end local v0           #galleryThumb:Lcom/lge/camera/postview/GalleryThumbnailLayout;
    check-cast v0, Lcom/lge/camera/postview/GalleryThumbnailLayout;

    .line 660
    .restart local v0       #galleryThumb:Lcom/lge/camera/postview/GalleryThumbnailLayout;
    if-eqz v0, :cond_0

    .line 661
    if-eqz p1, :cond_2

    .line 662
    invoke-virtual {v0, p3}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setVisibility(I)V

    .line 663
    invoke-virtual {v0}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->clearAnimation()V

    .line 664
    if-nez p3, :cond_0

    .line 665
    if-ne p2, v1, :cond_1

    .line 666
    invoke-virtual {v0, v6}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setSelected(Z)V

    .line 658
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 668
    :cond_1
    invoke-virtual {v0, v5}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setSelected(Z)V

    goto :goto_1

    .line 672
    :cond_2
    if-ne p2, v1, :cond_3

    .line 673
    iput p2, p0, Lcom/lge/camera/ShotPostviewActivity;->mCurrentSelectedIndex:I

    .line 674
    invoke-virtual {v0, v6}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setSelected(Z)V

    .line 675
    invoke-direct {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->timeMachineThumbAnimation(Landroid/view/View;)V

    goto :goto_1

    .line 677
    :cond_3
    invoke-virtual {v0, v5}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setSelected(Z)V

    goto :goto_1

    .line 682
    :cond_4
    return-void
.end method

.method private showCheckBox(Z)V
    .locals 5
    .parameter "show"

    .prologue
    .line 629
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 630
    .local v2, size:I
    const/4 v0, 0x0

    .line 631
    .local v0, galleryThumb:Lcom/lge/camera/postview/GalleryThumbnailLayout;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 632
    const v3, 0x7f09013c

    invoke-virtual {p0, v3}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .end local v0           #galleryThumb:Lcom/lge/camera/postview/GalleryThumbnailLayout;
    check-cast v0, Lcom/lge/camera/postview/GalleryThumbnailLayout;

    .line 633
    .restart local v0       #galleryThumb:Lcom/lge/camera/postview/GalleryThumbnailLayout;
    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {v0, p1}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->showCheckbox(Z)V

    .line 635
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 636
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setChecked(Z)V

    .line 631
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 640
    :cond_1
    return-void
.end method

.method private startTimeMachineFinishAnimaion()V
    .locals 4

    .prologue
    .line 1009
    const v1, 0x7f090139

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1010
    .local v0, galleryView:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1011
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mExitInteraction:Ljava/lang/Runnable;

    invoke-direct {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->gallerySlideDownAnimation(Ljava/lang/Runnable;)V

    .line 1015
    :goto_0
    return-void

    .line 1013
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mExitInteraction:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/lge/camera/PostviewTimeMachineActivity;->postOnUiThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private startTimeMachineShotAnimation()V
    .locals 8

    .prologue
    .line 1154
    const-string v0, "CameraApp"

    const-string v2, "startAnimation-start"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    :try_start_0
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1200
    :cond_0
    :goto_0
    return-void

    .line 1161
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimeMachineShotCount:I

    .line 1162
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimeMachineShotCount:I

    if-eqz v0, :cond_0

    .line 1165
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimeMachineShotCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I

    .line 1167
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->anim:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    .line 1168
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f040013

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->anim:Landroid/view/animation/Animation;

    .line 1169
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->anim:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    .line 1170
    const-string v0, "CameraApp"

    const-string v2, "ShowTimeMachineEffect startAnimation() anim = null"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1197
    :catch_0
    move-exception v6

    .line 1198
    .local v6, e:Ljava/lang/NullPointerException;
    const-string v0, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NullPointerException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1175
    .end local v6           #e:Ljava/lang/NullPointerException;
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    .line 1177
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->anim:Landroid/view/animation/Animation;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1179
    const v0, 0x7f090124

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1180
    .local v7, imageView:Landroid/view/View;
    if-eqz v7, :cond_3

    .line 1181
    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1183
    :cond_3
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {p0, v0, v2, v3}, Lcom/lge/camera/PostviewTimeMachineActivity;->setThumbListVisible(ZII)V

    .line 1185
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->setClockAnimationView(Z)V

    .line 1187
    new-instance v0, Ljava/util/Timer;

    const-string v2, "TimeMachine"

    invoke-direct {v0, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mAnimationTimer:Ljava/util/Timer;

    .line 1188
    new-instance v1, Lcom/lge/camera/PostviewTimeMachineActivity$7;

    invoke-direct {v1, p0}, Lcom/lge/camera/PostviewTimeMachineActivity$7;-><init>(Lcom/lge/camera/PostviewTimeMachineActivity;)V

    .line 1195
    .local v1, taskTimeMachine:Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mAnimationTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x64

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private stopTimeMachineAnimation()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1273
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mAnimationTimer:Ljava/util/Timer;

    if-eqz v4, :cond_4

    .line 1274
    const-string v4, "CameraApp"

    const-string v5, "stopTimeMachineAnimation-stop"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1275
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mAnimationTimer:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/util/Timer;->purge()I

    .line 1276
    iget-object v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mAnimationTimer:Ljava/util/Timer;

    invoke-virtual {v4}, Ljava/util/Timer;->cancel()V

    .line 1277
    iput-object v7, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mAnimationTimer:Ljava/util/Timer;

    .line 1278
    const/4 v4, 0x4

    iput v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mCurrentSelectedIndex:I

    .line 1280
    const v4, 0x7f090137

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1281
    .local v1, clockMinuteView:Landroid/widget/ImageView;
    const v4, 0x7f090138

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 1282
    .local v2, clockSecView:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 1283
    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1285
    :cond_0
    if-eqz v2, :cond_1

    .line 1286
    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1288
    :cond_1
    invoke-direct {p0, v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->setClockAnimationView(Z)V

    .line 1290
    const v4, 0x7f090134

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1291
    .local v0, aniView:Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 1292
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 1293
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1294
    invoke-static {v0}, Lcom/lge/camera/util/Util;->clearImageViewDrawableOnly(Landroid/widget/ImageView;)V

    .line 1296
    :cond_2
    const v4, 0x7f090124

    invoke-virtual {p0, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1297
    .local v3, imageView:Landroid/view/View;
    if-eqz v3, :cond_3

    .line 1298
    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 1299
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1301
    :cond_3
    const/4 v4, 0x1

    iget v5, p0, Lcom/lge/camera/ShotPostviewActivity;->mCurrentSelectedIndex:I

    invoke-direct {p0, v4, v5, v6}, Lcom/lge/camera/PostviewTimeMachineActivity;->setThumbListVisible(ZII)V

    .line 1302
    iget v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mCurrentSelectedIndex:I

    invoke-direct {p0, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->refreshLoadCapturedImages(I)Z

    .line 1303
    iput-object v7, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->anim:Landroid/view/animation/Animation;

    .line 1304
    const/4 v4, 0x2

    iput v4, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    .line 1306
    .end local v0           #aniView:Landroid/widget/ImageView;
    .end local v1           #clockMinuteView:Landroid/widget/ImageView;
    .end local v2           #clockSecView:Landroid/widget/ImageView;
    .end local v3           #imageView:Landroid/view/View;
    :cond_4
    iput v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I

    .line 1307
    iput v6, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimeMachineShotCount:I

    .line 1308
    return-void
.end method

.method private stopTimeMachineAnimationAndGotoMultiSelectMode(Z)V
    .locals 2
    .parameter "shotToast"

    .prologue
    .line 1132
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->stopTimeMachineAnimation()V

    .line 1134
    const/4 v1, 0x2

    iput v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    .line 1136
    iget-boolean v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPause:Z

    if-nez v1, :cond_0

    .line 1137
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->showCheckBox(Z)V

    .line 1142
    const v1, 0x7f09013a

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1143
    .local v0, guideTextLayout:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1145
    .end local v0           #guideTextLayout:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private timeMachineClockMinuteAnimation(I)V
    .locals 11
    .parameter "clockInterval"

    .prologue
    .line 1353
    iget v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I

    if-gez v1, :cond_1

    .line 1374
    :cond_0
    :goto_0
    return-void

    .line 1357
    :cond_1
    const/4 v9, 0x0

    .line 1358
    .local v9, fromDegree:I
    const/16 v10, -0x1e

    .line 1360
    .local v10, toDegree:I
    :try_start_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v9

    int-to-float v2, v10

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 1363
    .local v0, ra:Landroid/view/animation/RotateAnimation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 1364
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 1365
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1366
    const v1, 0x7f090137

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1367
    .local v7, clockView:Landroid/widget/ImageView;
    if-eqz v7, :cond_0

    .line 1368
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1370
    .end local v0           #ra:Landroid/view/animation/RotateAnimation;
    .end local v7           #clockView:Landroid/widget/ImageView;
    :catch_0
    move-exception v8

    .line 1371
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "Exception!"

    invoke-static {v1, v2, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1372
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->stopTimeMachineAnimationAndGotoMultiSelectMode(Z)V

    goto :goto_0
.end method

.method private timeMachineClockSecAnimation(I)V
    .locals 11
    .parameter "clockInterval"

    .prologue
    .line 1377
    iget v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimerCount:I

    if-gez v1, :cond_1

    .line 1397
    :cond_0
    :goto_0
    return-void

    .line 1381
    :cond_1
    const/4 v9, 0x0

    .line 1382
    .local v9, fromDegree:I
    const/16 v10, -0x168

    .line 1384
    .local v10, toDegree:I
    :try_start_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v9

    int-to-float v2, v10

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 1387
    .local v0, ra:Landroid/view/animation/RotateAnimation;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 1388
    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 1389
    const v1, 0x7f090138

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1390
    .local v7, clockView:Landroid/widget/ImageView;
    if-eqz v7, :cond_0

    .line 1391
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1393
    .end local v0           #ra:Landroid/view/animation/RotateAnimation;
    .end local v7           #clockView:Landroid/widget/ImageView;
    :catch_0
    move-exception v8

    .line 1394
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "Exception!"

    invoke-static {v1, v2, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1395
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->stopTimeMachineAnimationAndGotoMultiSelectMode(Z)V

    goto :goto_0
.end method

.method private timeMachineThumbAnimation(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1400
    if-eqz p1, :cond_0

    .line 1401
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1402
    .local v0, alphaAni:Landroid/view/animation/AlphaAnimation;
    new-instance v1, Lcom/lge/camera/PostviewTimeMachineActivity$9;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/PostviewTimeMachineActivity$9;-><init>(Lcom/lge/camera/PostviewTimeMachineActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1412
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1413
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1414
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x4000

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1415
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1417
    .end local v0           #alphaAni:Landroid/view/animation/AlphaAnimation;
    :cond_0
    return-void
.end method


# virtual methods
.method protected checkTimeMachineFileOverwritten()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 1492
    const/4 v0, 0x0

    .line 1493
    .local v0, checkValue:Z
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v2

    .line 1494
    .local v2, mTempTmsNameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1495
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1496
    .local v1, mPresentTimeMachinefile:Ljava/io/File;
    iget-wide v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mFirstTimeMachineDataSize:J

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v3, v5, v7

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 1497
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mFirstTimeMachineDataSize:J

    .line 1499
    .end local v1           #mPresentTimeMachinefile:Ljava/io/File;
    :cond_0
    return v0

    .restart local v1       #mPresentTimeMachinefile:Ljava/io/File;
    :cond_1
    move v0, v4

    .line 1496
    goto :goto_0
.end method

.method protected deleteFinished()V
    .locals 3

    .prologue
    .line 1019
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1020
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "delete_done"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1021
    const/16 v1, 0x64

    invoke-virtual {p0, v1, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->setResult(ILandroid/content/Intent;)V

    .line 1022
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->startTimeMachineFinishAnimaion()V

    .line 1023
    return-void
.end method

.method protected deleteImage(Ljava/lang/String;Landroid/net/Uri;)I
    .locals 5
    .parameter "filename"
    .parameter "uri"

    .prologue
    .line 924
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getTimeMachineStorageDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 925
    .local v1, fullPath:Ljava/lang/String;
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "try to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    invoke-static {v1}, Lcom/lge/camera/util/Common;->isFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 927
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 928
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 929
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 930
    const-string v2, "CameraApp"

    const-string v3, "deleted uri"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 940
    .end local v0           #file:Ljava/io/File;
    :goto_1
    return v2

    .line 932
    .restart local v0       #file:Ljava/io/File;
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "failure to delete uri!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 936
    :cond_1
    const-string v2, "CameraApp"

    const-string v3, "delete failed"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    .end local v0           #file:Ljava/io/File;
    :cond_2
    const-string v2, "CameraApp"

    const-string v3, "failure delete image file (return -1)"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const/4 v2, -0x1

    goto :goto_1
.end method

.method protected doBackKeyInPostview()V
    .locals 2

    .prologue
    .line 1120
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_BACK"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    iget-boolean v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPause:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1122
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "KEYCODE_BACK - return..."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    :goto_0
    return-void

    .line 1125
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->stopTimeMachineAnimationAndGotoMultiSelectMode(Z)V

    .line 1127
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->onCreateDialog(II)V

    goto :goto_0
.end method

.method public doEnableGalleryPositiveClick()V
    .locals 3

    .prologue
    .line 1485
    const/4 v1, 0x2

    iput v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isGalleryLaunchingState:I

    .line 1486
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package:com.android.gallery3d"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1488
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->startActivity(Landroid/content/Intent;)V

    .line 1489
    return-void
.end method

.method protected doPreProcessOnCreate()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method protected doProcessOnCreate()V
    .locals 5

    .prologue
    .line 71
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lge/camera/ShotPostviewActivity;->isFromCreateProcess:Z

    .line 73
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mFirstTimeMachineDataSize:J

    .line 76
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog_postview"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 77
    .local v1, fragment:Landroid/app/Fragment;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 79
    .local v2, fragmentTransaction:Landroid/app/FragmentTransaction;
    if-eqz v2, :cond_0

    .line 80
    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 81
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 84
    .end local v2           #fragmentTransaction:Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method protected doProcessOnDestroy()V
    .locals 9

    .prologue
    const v8, 0x7f09013c

    const/4 v7, 0x0

    .line 178
    invoke-virtual {p0, v8}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 179
    .local v4, timeMachineGalleryImage:Landroid/view/View;
    iget-object v5, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v5, :cond_1

    .line 180
    iget-object v5, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v5}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 181
    .local v3, size:I
    const/4 v0, 0x0

    .line 182
    .local v0, galleryThumb:Lcom/lge/camera/postview/GalleryThumbnailLayout;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 183
    invoke-virtual {p0, v8}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .end local v0           #galleryThumb:Lcom/lge/camera/postview/GalleryThumbnailLayout;
    check-cast v0, Lcom/lge/camera/postview/GalleryThumbnailLayout;

    .line 184
    .restart local v0       #galleryThumb:Lcom/lge/camera/postview/GalleryThumbnailLayout;
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->unbind()V

    .line 182
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v0           #galleryThumb:Lcom/lge/camera/postview/GalleryThumbnailLayout;
    .end local v1           #i:I
    .end local v3           #size:I
    :cond_1
    if-eqz v4, :cond_2

    .line 190
    check-cast v4, Landroid/widget/RelativeLayout;

    .end local v4           #timeMachineGalleryImage:Landroid/view/View;
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 193
    :cond_2
    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    .line 194
    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    const/4 v2, 0x0

    .line 195
    .local v2, imageListSize:I
    :goto_1
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v2, :cond_4

    .line 196
    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-static {v5}, Lcom/lge/camera/util/Util;->recycleBitmapDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 195
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 194
    .end local v1           #i:I
    .end local v2           #imageListSize:I
    :cond_3
    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_1

    .line 198
    .restart local v1       #i:I
    .restart local v2       #imageListSize:I
    :cond_4
    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 199
    iput-object v7, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    .line 201
    .end local v1           #i:I
    .end local v2           #imageListSize:I
    :cond_5
    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    .line 202
    iget-object v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 203
    iput-object v7, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    .line 205
    :cond_6
    iput-object v7, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    .line 206
    const/4 v5, 0x2

    iput v5, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    .line 208
    return-void
.end method

.method protected doProcessOnPause()V
    .locals 4

    .prologue
    .line 154
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isAnimationRunning:Z

    .line 156
    iget-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    .line 165
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->stopTimeMachineAnimationAndGotoMultiSelectMode(Z)V

    .line 166
    const/4 v1, 0x2

    iput v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    .line 173
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorage()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/util/FileNamer;->close(Landroid/content/Context;I)V

    .line 174
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "InterruptedException: "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected doProcessOnResume()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x4

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 89
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v2}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorage()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v4}, Lcom/lge/camera/postview/PostViewParameters;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/util/FileNamer;->startFileNamer(Landroid/content/Context;IILjava/lang/String;Z)V

    .line 97
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->checkValidateTimeMachineImage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->checkValidateOneShotImage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mExitInteraction:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 100
    iput-boolean v8, p0, Lcom/lge/camera/ShotPostviewActivity;->isFromCreateProcess:Z

    .line 150
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/ShotPostviewActivity;->isFromCreateProcess:Z

    if-eqz v0, :cond_3

    .line 105
    const v0, 0x7f090124

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 106
    .local v7, imageView:Landroid/view/View;
    if-eqz v7, :cond_2

    .line 107
    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 109
    :cond_2
    invoke-direct {p0, v5, v8, v9}, Lcom/lge/camera/PostviewTimeMachineActivity;->setThumbListVisible(ZII)V

    .line 111
    new-instance v0, Lcom/lge/camera/PostviewTimeMachineActivity$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/PostviewTimeMachineActivity$1;-><init>(Lcom/lge/camera/PostviewTimeMachineActivity;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/camera/PostviewTimeMachineActivity;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 119
    .end local v7           #imageView:Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->checkTimeMachineFileOverwritten()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    const-string v0, "CameraApp"

    const-string v1, "File over written! need to reload."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iput v10, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    .line 122
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentMakingImageIndex:I

    .line 124
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 125
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    :cond_4
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    if-ne v0, v10, :cond_6

    .line 131
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mCurrentMakingImageIndex:I

    if-eqz v0, :cond_5

    .line 132
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->makeTimeMachineGalleryImages()V

    .line 134
    :cond_5
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->reloadTimemachineGalleryLayout()V

    .line 135
    iget v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mCurrentSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->refreshLoadCapturedImages(I)Z

    .line 136
    invoke-direct {p0, v5}, Lcom/lge/camera/PostviewTimeMachineActivity;->stopTimeMachineAnimationAndGotoMultiSelectMode(Z)V

    .line 139
    :cond_6
    iget-boolean v0, p0, Lcom/lge/camera/ShotPostviewActivity;->isFromCreateProcess:Z

    if-eqz v0, :cond_7

    .line 140
    iput v9, p0, Lcom/lge/camera/ShotPostviewActivity;->mCurrentSelectedIndex:I

    .line 141
    const v0, 0x7f09013c

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCurrentSelectedIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/lge/camera/postview/GalleryThumbnailLayout;

    .line 142
    .local v6, galleryThumb:Lcom/lge/camera/postview/GalleryThumbnailLayout;
    invoke-virtual {v6, v5}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setSelected(Z)V

    .line 143
    invoke-virtual {v6}, Lcom/lge/camera/postview/GalleryThumbnailLayout;->setChecked()V

    .line 144
    iget-object v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mSelectedIndexs:Ljava/util/ArrayList;

    iget v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCurrentSelectedIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mCurrentSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->refreshLoadCapturedImages(I)Z

    .line 148
    .end local v6           #galleryThumb:Lcom/lge/camera/postview/GalleryThumbnailLayout;
    :cond_7
    iput-boolean v8, p0, Lcom/lge/camera/ShotPostviewActivity;->isFromCreateProcess:Z

    .line 149
    iput v8, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isGalleryLaunchingState:I

    goto/16 :goto_0
.end method

.method public doTimeMachineWarningDismiss()V
    .locals 2

    .prologue
    .line 766
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isGalleryLaunchingState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 767
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isGalleryLaunchingState:I

    .line 769
    :cond_0
    return-void
.end method

.method public doTimeMachineWarningNegativeClick(Landroid/widget/CheckBox;)V
    .locals 6
    .parameter "checkBox"

    .prologue
    .line 752
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 753
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "Main_CameraAppConfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 754
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 755
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v3, "TIME_MACHINE_DO_NOT_SHOW"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 756
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 758
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v2           #pref:Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->doTimeMachineWarningDismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    :goto_0
    return-void

    .line 759
    :catch_0
    move-exception v0

    .line 760
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "Exception!"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public doTimeMachineWarningPositiveClick(Landroid/widget/CheckBox;)V
    .locals 7
    .parameter "checkBox"

    .prologue
    const/4 v6, 0x1

    .line 728
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 729
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "Main_CameraAppConfig"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 730
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 731
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v3, "TIME_MACHINE_DO_NOT_SHOW"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 732
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 735
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v2           #pref:Landroid/content/SharedPreferences;
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_1

    .line 736
    iget v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isGalleryLaunchingState:I

    if-ne v3, v6, :cond_2

    .line 737
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->saveSelectedImages(ZZ)I

    .line 738
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->doGalleryLaunching()V

    .line 747
    :cond_1
    :goto_0
    return-void

    .line 740
    :cond_2
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/lge/camera/PostviewTimeMachineActivity;->saveSelectedImages(ZZ)I

    .line 741
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->startTimeMachineFinishAnimaion()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 744
    :catch_0
    move-exception v0

    .line 745
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "Exception!"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected doVolumeKey(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    if-eqz v0, :cond_0

    const-string v0, "shutter"

    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getVolumeKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1109
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1110
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1116
    :cond_0
    :goto_0
    return-void

    .line 1113
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->doBackKeyInPostview()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 212
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged : newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mOrientationInfo:Lcom/lge/camera/postview/PostviewOrientationInfo;

    invoke-virtual {v0}, Lcom/lge/camera/postview/PostviewOrientationInfo;->setOrientationByWindowOrientation()V

    .line 216
    :cond_0
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    if-eqz v0, :cond_1

    .line 217
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->stopTimeMachineAnimationAndGotoMultiSelectMode(Z)V

    .line 219
    :cond_1
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->reloadTimemachineGalleryLayout()V

    .line 220
    iget v0, p0, Lcom/lge/camera/ShotPostviewActivity;->mCurrentSelectedIndex:I

    invoke-direct {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->refreshLoadCapturedImages(I)Z

    .line 221
    invoke-super {p0, p1}, Lcom/lge/camera/ShotPostviewActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 222
    return-void
.end method

.method protected onCreateDialog(II)V
    .locals 7
    .parameter "dialogId"
    .parameter "applicationMode"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 686
    const/4 v3, 0x6

    if-ne p1, v3, :cond_3

    .line 687
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "Main_CameraAppConfig"

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 688
    .local v2, pref:Landroid/content/SharedPreferences;
    if-eqz v2, :cond_3

    const-string v3, "TIME_MACHINE_DO_NOT_SHOW"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 689
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 690
    iget-object v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mMakeGalleryImageThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 692
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v3}, Lcom/lge/camera/postview/PostViewParameters;->getUriList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v6, :cond_1

    .line 693
    iget v3, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->isGalleryLaunchingState:I

    if-ne v3, v6, :cond_2

    .line 694
    invoke-direct {p0, v6, v5}, Lcom/lge/camera/PostviewTimeMachineActivity;->saveSelectedImages(ZZ)I

    .line 695
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->doGalleryLaunching()V

    .line 711
    .end local v2           #pref:Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 697
    .restart local v2       #pref:Landroid/content/SharedPreferences;
    :cond_2
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->startTimeMachineFinishAnimaion()V

    .line 698
    invoke-direct {p0, v6, v5}, Lcom/lge/camera/PostviewTimeMachineActivity;->saveSelectedImages(ZZ)I

    goto :goto_0

    .line 704
    .end local v2           #pref:Landroid/content/SharedPreferences;
    :cond_3
    invoke-static {p1, p2}, Lcom/lge/camera/postview/PostviewDialog;->getPostviewDialog(II)Lcom/lge/camera/postview/PostviewDialog;

    move-result-object v1

    .line 705
    .local v1, mDialog:Lcom/lge/camera/postview/PostviewDialog;
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog_postview"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 707
    .local v0, dialogFragment:Landroid/app/Fragment;
    if-eqz v0, :cond_4

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_1

    .line 709
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "dialog_postview"

    invoke-virtual {v1, v3, v4}, Lcom/lge/camera/postview/PostviewDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 226
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 245
    :goto_0
    return v2

    .line 228
    :sswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->doBackKeyInPostview()V

    goto :goto_0

    .line 231
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/lge/camera/PostviewTimeMachineActivity;->stopTimeMachineAnimationAndGotoMultiSelectMode(Z)V

    .line 232
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mPostViewParameters:Lcom/lge/camera/postview/PostViewParameters;

    invoke-virtual {v1}, Lcom/lge/camera/postview/PostViewParameters;->getApplicationMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->onCreateDialog(II)V

    goto :goto_0

    .line 235
    :sswitch_2
    iget v0, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    if-ne v0, v2, :cond_0

    .line 236
    invoke-direct {p0, v2}, Lcom/lge/camera/PostviewTimeMachineActivity;->stopTimeMachineAnimationAndGotoMultiSelectMode(Z)V

    .line 240
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->clickTimeMachineSave()V

    goto :goto_1

    .line 226
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f09021e -> :sswitch_2
        0x7f090221 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 250
    iget v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mTimemachineMode:I

    packed-switch v1, :pswitch_data_0

    .line 260
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/lge/camera/ShotPostviewActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 254
    :pswitch_0
    const v1, 0x7f09021e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 255
    .local v0, item:Landroid/view/MenuItem;
    if-nez v0, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f0d0002

    invoke-virtual {v1, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected postviewShow()V
    .locals 3

    .prologue
    .line 286
    const-string v1, "CameraApp"

    const-string v2, "TIME_CHECK show()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const v1, 0x7f090133

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 288
    .local v0, postView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 289
    const-string v1, "CameraApp"

    const-string v2, "postviewShow : inflate view fail."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 293
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 295
    :cond_1
    new-instance v1, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;-><init>(Lcom/lge/camera/PostviewTimeMachineActivity;Lcom/lge/camera/PostviewTimeMachineActivity$1;)V

    iput-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    .line 296
    iget-object v1, p0, Lcom/lge/camera/PostviewTimeMachineActivity;->mThumbSizeInfo:Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;

    invoke-virtual {v1}, Lcom/lge/camera/PostviewTimeMachineActivity$ThumbnailSizeInfo;->setThumbnailSizeInfo()V

    .line 298
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->makeTimemachineGalleryLayout()V

    .line 299
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->makeTimeMachineGalleryImages()V

    goto :goto_0
.end method

.method protected reloadedPostview()V
    .locals 2

    .prologue
    .line 304
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 305
    const v1, 0x7f090124

    invoke-virtual {p0, v1}, Lcom/lge/camera/PostviewTimeMachineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 306
    .local v0, postview:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/lge/camera/ShotPostviewActivity;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 308
    .end local v0           #postview:Landroid/widget/ImageView;
    :cond_0
    return-void
.end method

.method protected setActionBar()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 265
    invoke-virtual {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 266
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 267
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 269
    const v1, 0x7f0b02de

    .line 270
    .local v1, stringId:I
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useTimeCatchShotTitle()Z

    move-result v2

    if-nez v2, :cond_0

    .line 271
    const v1, 0x7f0b0251

    .line 275
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 276
    return-void

    .line 273
    :cond_0
    const v1, 0x7f0b02de

    goto :goto_0
.end method

.method protected setupLayout()V
    .locals 1

    .prologue
    .line 280
    const v0, 0x7f09012f

    invoke-virtual {p0, v0}, Lcom/lge/camera/PostviewTimeMachineActivity;->inflateStub(I)Landroid/view/View;

    .line 281
    invoke-direct {p0}, Lcom/lge/camera/PostviewTimeMachineActivity;->setGalleryLayout()V

    .line 282
    return-void
.end method
