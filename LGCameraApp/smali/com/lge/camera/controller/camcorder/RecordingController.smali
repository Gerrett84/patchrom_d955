.class public Lcom/lge/camera/controller/camcorder/RecordingController;
.super Lcom/lge/camera/controller/Controller;
.source "RecordingController.java"


# instance fields
.field private mAfterRecordingThread:Ljava/lang/Thread;

.field private mCheckResumeVideo:Z

.field private mEndTime:J

.field private mIsFileSizeLimitReached:Z

.field private mIsStopRecordingByMountedAction:Z

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mPauseTime:J

.field public mRecIndicatorHeight:I

.field public mRecIndicatorLeftMargin:I

.field public mRecIndicatorWidth:I

.field private mRecordingDurationLimit:J

.field private mRecordingSizeLimit:J

.field public mScaleWidthHeight:F

.field private mStartTime:J

.field private mStopRecordingDuringCall:Z

.field private mStopRecordingThread:Ljava/lang/Thread;

.field private mVideoFile:Lcom/lge/camera/VideoFile;

.field private mVideoFileSize:J


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 4
    .parameter "function"

    .prologue
    const/4 v0, -0x1

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 45
    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    .line 46
    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    .line 47
    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mPauseTime:J

    .line 59
    iput v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorWidth:I

    .line 60
    iput v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorHeight:I

    .line 61
    iput v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorLeftMargin:I

    .line 62
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mScaleWidthHeight:F

    .line 63
    iput-boolean v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingDuringCall:Z

    .line 633
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mCheckResumeVideo:Z

    .line 659
    iput-boolean v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsStopRecordingByMountedAction:Z

    .line 767
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mAfterRecordingThread:Ljava/lang/Thread;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/controller/camcorder/RecordingController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/lge/camera/controller/camcorder/RecordingController;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/lge/camera/controller/camcorder/RecordingController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/camera/controller/camcorder/RecordingController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->checkMediator()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lge/camera/controller/camcorder/RecordingController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->checkMediator()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/lge/camera/controller/camcorder/RecordingController;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mAfterRecordingThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/lge/camera/controller/camcorder/RecordingController;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mAfterRecordingThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/lge/camera/controller/camcorder/RecordingController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsStopRecordingByMountedAction:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/lge/camera/controller/camcorder/RecordingController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->checkMediator()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/camcorder/RecordingController;)Lcom/lge/camera/ControllerFunction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    return-object v0
.end method

.method static synthetic access$902(Lcom/lge/camera/controller/camcorder/RecordingController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mCheckResumeVideo:Z

    return p1
.end method

.method private addSecureImageList(Landroid/net/Uri;)V
    .locals 1
    .parameter "savedUri"

    .prologue
    .line 1130
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->isGuestMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AppControlUtil;->checkGalleryEnabledOnGuestMode(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1134
    :cond_0
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/camera/util/SecureImageUtil;->addSecureLocVideokUri(Landroid/net/Uri;)V

    .line 1136
    :cond_1
    return-void
.end method

.method private callStartRecording()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 401
    const/4 v3, 0x1

    .line 403
    .local v3, videoRecordingStartRetval:Z
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 404
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->startRecordingEffect()V

    .line 410
    :goto_0
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 411
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-wide/16 v5, 0x0

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setCurrentRecordingTime(J)V

    .line 413
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->show()V

    .line 416
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAvailableLiveShot()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->isUHDmode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 423
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.ShowLiveSnapshotButton"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 426
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 427
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->showRecoridngStopButton()V

    .line 430
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getFunctionUITimer()I

    move-result v4

    if-nez v4, :cond_7

    .line 431
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/16 v1, 0x3e8

    .line 432
    .local v1, compensationTime:I
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    iput-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    .line 433
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.UpdateRecordingTime"

    int-to-long v6, v1

    invoke-interface {v4, v5, v6, v7}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 438
    .end local v1           #compensationTime:I
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f090180

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RecProgressBar;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/lge/camera/components/RecProgressBar;->setProgress(I)V

    .line 440
    const/4 v4, 0x1

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/lge/camera/controller/camcorder/RecordingController;->setQuickButton(ZI)V

    .line 442
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isUseFlashTemperature()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "torch"

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->GetXo_thermal()D

    move-result-wide v4

    sget-wide v6, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_FLASH_RECORDING_STANDARD:D

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_4

    .line 447
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_flash"

    const-string v6, "off"

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 448
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 449
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "fromQuickButton"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 450
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.setting.SetFlashMode"

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 451
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f0b025e

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 452
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->setFlashOffByHighTemperature(Z)V

    .line 453
    const-string v4, "CameraApp"

    const-string v5, "flash off by callStartRecording"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 467
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_4
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 468
    if-nez v3, :cond_5

    .line 469
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->restoreToIdle()V

    .line 470
    const-string v4, "CameraApp"

    const-string v5, "Could not start media recorder"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_5
    :goto_2
    return-void

    .line 407
    :cond_6
    :try_start_1
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->start()Z

    move-result v3

    .line 408
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "videoRecordingStartRetval = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 456
    :catch_0
    move-exception v2

    .line 457
    .local v2, e:Ljava/lang/RuntimeException;
    :try_start_2
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    .line 458
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->restoreToIdle()V

    .line 459
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not start media recorder = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 467
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 468
    if-nez v3, :cond_5

    .line 469
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->restoreToIdle()V

    .line 470
    const-string v4, "CameraApp"

    const-string v5, "Could not start media recorder"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 435
    .end local v2           #e:Ljava/lang/RuntimeException;
    :cond_7
    const-wide/16 v4, 0x0

    :try_start_3
    iput-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    iput-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 461
    :catch_1
    move-exception v2

    .line 462
    .local v2, e:Ljava/lang/Exception;
    :try_start_4
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    .line 463
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->restoreToIdle()V

    .line 464
    const-string v4, "CameraApp"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 467
    iget-object v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 468
    if-nez v3, :cond_5

    .line 469
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->restoreToIdle()V

    .line 470
    const-string v4, "CameraApp"

    const-string v5, "Could not start media recorder"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 467
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 468
    if-nez v3, :cond_8

    .line 469
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->restoreToIdle()V

    .line 470
    const-string v5, "CameraApp"

    const-string v6, "Could not start media recorder"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    throw v4
.end method

.method private checkMinRecordingTimeAndDeleteVideo(JLjava/io/File;ZLjava/lang/String;)Landroid/net/Uri;
    .locals 7
    .parameter "checkTime"
    .parameter "vFile"
    .parameter "isMediaScanning"
    .parameter "videoSizeString"

    .prologue
    const/4 v1, 0x0

    .line 1139
    const/4 v6, 0x0

    .line 1140
    .local v6, savedUri:Landroid/net/Uri;
    iget-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    sub-long v2, p1, v2

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMinRecordingTime()I

    move-result v0

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    .line 1141
    if-eqz p3, :cond_0

    .line 1142
    const-string v0, "CameraApp"

    const-string v1, "vFile.delete()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    .line 1159
    :cond_0
    :goto_0
    return-object v6

    .line 1146
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkFsWritable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1147
    if-nez p4, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isMMSRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1149
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    const/4 v5, 0x1

    move-object v2, p5

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/VideoFile;->registerUri(ILjava/lang/String;Landroid/location/Location;ZI)Landroid/net/Uri;

    move-result-object v6

    .line 1153
    :goto_1
    invoke-direct {p0, v6}, Lcom/lge/camera/controller/camcorder/RecordingController;->addSecureImageList(Landroid/net/Uri;)V

    goto :goto_0

    .line 1151
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    move-object v2, p5

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/VideoFile;->registerUri(ILjava/lang/String;Landroid/location/Location;ZI)Landroid/net/Uri;

    move-result-object v6

    goto :goto_1

    .line 1156
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v0}, Lcom/lge/camera/VideoFile;->deleteFile()V

    goto :goto_0
.end method

.method private checkMinTimeAndDeleteForSaveUri(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 8
    .parameter "videoSizeString"
    .parameter "condition"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 881
    const/4 v6, 0x0

    .line 882
    .local v6, savedUri:Landroid/net/Uri;
    if-eqz p2, :cond_1

    .line 883
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v0}, Lcom/lge/camera/VideoFile;->getFile()Ljava/io/File;

    move-result-object v7

    .line 884
    .local v7, vFile:Ljava/io/File;
    if-eqz v7, :cond_0

    .line 885
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMinTimeAndDeleteForSaveUri delete! condition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 901
    .end local v7           #vFile:Ljava/io/File;
    :cond_0
    :goto_0
    return-object v6

    .line 889
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->checkFsWritable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 890
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isMMSRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 891
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    move-object v2, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/VideoFile;->registerUri(ILjava/lang/String;Landroid/location/Location;ZI)Landroid/net/Uri;

    move-result-object v6

    .line 895
    :goto_1
    invoke-direct {p0, v6}, Lcom/lge/camera/controller/camcorder/RecordingController;->addSecureImageList(Landroid/net/Uri;)V

    goto :goto_0

    .line 893
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v3

    move-object v2, p1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/VideoFile;->registerUri(ILjava/lang/String;Landroid/location/Location;ZI)Landroid/net/Uri;

    move-result-object v6

    goto :goto_1

    .line 897
    :cond_3
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMinTimeAndDeleteForSaveUri delete! condition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v0}, Lcom/lge/camera/VideoFile;->deleteFile()V

    goto :goto_0
.end method

.method private getSaveUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 12
    .parameter "videoSizeString"

    .prologue
    .line 1106
    const/4 v11, 0x0

    .line 1107
    .local v11, savedUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isMediaScanning()Z

    move-result v4

    .line 1109
    .local v4, isMediaScanning:Z
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isCheckUSBConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getMediaUSBConnectAtStartRecord()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lge/camera/util/Common;->getUSBconfig()Ljava/lang/String;

    move-result-object v0

    const-string v5, "mtp_only"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lge/camera/util/Common;->getUSBconfig()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ptp_only"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/lge/camera/util/Common;->getUSBstate()Ljava/lang/String;

    move-result-object v0

    const-string v5, "CONFIGURED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->useMediaScanning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1114
    const/4 v4, 0x1

    .line 1117
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v0}, Lcom/lge/camera/VideoFile;->getFile()Ljava/io/File;

    move-result-object v3

    .line 1118
    .local v3, vFile:Ljava/io/File;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1119
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getFunctionUITimer()I

    move-result v0

    if-nez v0, :cond_3

    .line 1120
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .local v1, currentTime:J
    move-object v0, p0

    move-object v5, p1

    .line 1121
    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/controller/camcorder/RecordingController;->checkMinRecordingTimeAndDeleteVideo(JLjava/io/File;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 1126
    .end local v1           #currentTime:J
    :cond_2
    :goto_0
    return-object v11

    .line 1123
    :cond_3
    iget-wide v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    move-object v5, p0

    move-object v8, v3

    move v9, v4

    move-object v10, p1

    invoke-direct/range {v5 .. v10}, Lcom/lge/camera/controller/camcorder/RecordingController;->checkMinRecordingTimeAndDeleteVideo(JLjava/io/File;ZLjava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    goto :goto_0
.end method

.method private restoreToIdle()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 520
    const-string v0, "CameraApp"

    const-string v1, "startRecording is NOT started. Restore environment to idle."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 523
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->setQuickButton(ZI)V

    .line 525
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 531
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->set3DSwitchVisible(Z)V

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateThumbnailButtonVisibility()V

    .line 536
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showQuickFunctionController()V

    .line 537
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 538
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->showDefaultQuickButton(Z)V

    .line 541
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAvailableLiveShot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.HideLiveSnapshotButton"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->enableCommand(Z)V

    .line 546
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setMainButtonEnable()V

    .line 548
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->hideTimeIndicator()V

    .line 549
    return-void

    .line 528
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    goto :goto_0
.end method

.method private setQuickButton(ZI)V
    .locals 2
    .parameter "start"
    .parameter "degree"

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/camcorder/RecordingController$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/camera/controller/camcorder/RecordingController$5;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController;ZI)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;)V

    .line 1282
    return-void
.end method

.method private setSaveUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 9
    .parameter "videoSizeString"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 869
    const/4 v0, 0x1

    .line 870
    .local v0, condition:Z
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getFunctionUITimer()I

    move-result v5

    if-nez v5, :cond_1

    .line 871
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 872
    .local v1, currentTime:J
    iget-wide v5, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    sub-long v5, v1, v5

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMinRecordingTime()I

    move-result v7

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    move v0, v3

    .line 873
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->checkMinTimeAndDeleteForSaveUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v3

    .line 876
    .end local v1           #currentTime:J
    :goto_1
    return-object v3

    .restart local v1       #currentTime:J
    :cond_0
    move v0, v4

    .line 872
    goto :goto_0

    .line 875
    .end local v1           #currentTime:J
    :cond_1
    iget-wide v5, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    iget-wide v7, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    sub-long/2addr v5, v7

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMinRecordingTime()I

    move-result v7

    int-to-long v7, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    move v0, v3

    .line 876
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->checkMinTimeAndDeleteForSaveUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1

    :cond_2
    move v0, v4

    .line 875
    goto :goto_2
.end method

.method private setVideoSize()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 476
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isMMSRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    invoke-virtual {p0, v5}, Lcom/lge/camera/controller/camcorder/RecordingController;->initVideoFile(I)V

    .line 478
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getRequestedVideoSizeLimit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    .line 479
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getMaxVideoDurationInMs()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingDurationLimit:J

    .line 480
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/properties/MmsProperties;->getMmsVideoSizeLimit(Landroid/content/ContentResolver;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    .line 483
    :cond_0
    invoke-static {v5}, Lcom/lge/camera/VideoRecorder;->setVideoSize(I)Z

    .line 496
    :goto_0
    return-void

    .line 485
    :cond_1
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camcorder/RecordingController;->initVideoFile(I)V

    .line 486
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 487
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getRequestedVideoSizeLimit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    .line 488
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getMaxVideoDurationInMs()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingDurationLimit:J

    .line 489
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/properties/MmsProperties;->getMmsVideoSizeLimit(Landroid/content/ContentResolver;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    .line 494
    :cond_2
    :goto_1
    invoke-static {v4}, Lcom/lge/camera/VideoRecorder;->setVideoSize(I)Z

    goto :goto_0

    .line 493
    :cond_3
    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    goto :goto_1
.end method

.method private startHeatingWarning()V
    .locals 4

    .prologue
    .line 499
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, RecordingSize:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 505
    const-string v1, "CameraApp"

    const-string v2, "Recording Size reference NULL Value, please CHECK \'getPreviewSizeOnDevice() function~!!!\' "

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    .end local v0           #RecordingSize:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 510
    .restart local v0       #RecordingSize:Ljava/lang/String;
    :cond_2
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recording Size :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-static {v0}, Lcom/lge/camera/util/Common;->IsHeatingVideoSize(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getIsCharging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 514
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->startHeatingwarning()V

    goto :goto_0
.end method


# virtual methods
.method public doAfterRecordingProcess()V
    .locals 6

    .prologue
    .line 777
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnDevice()Ljava/lang/String;

    move-result-object v2

    .line 778
    .local v2, videoSizeString:Ljava/lang/String;
    const/4 v0, 0x0

    .line 780
    .local v0, savedUri:Landroid/net/Uri;
    const-string v3, "recordmode_live_effect"

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_video_record_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 781
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v3

    invoke-static {v3}, Lcom/lge/camera/properties/MultimediaProperties;->getLiveeffectResolutions(I)Ljava/lang/String;

    move-result-object v2

    .line 788
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/lge/camera/controller/camcorder/RecordingController;->setSaveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 789
    const-string v3, "CameraApp"

    const-string v4, "doAfterRecordingProcess-start"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v4, Lcom/lge/camera/controller/camcorder/RecordingController$2;

    invoke-direct {v4, p0}, Lcom/lge/camera/controller/camcorder/RecordingController$2;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController;)V

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 802
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsStopRecordingByMountedAction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsStopRecordingByMountedAction:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    if-eqz v0, :cond_6

    iget-boolean v3, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsStopRecordingByMountedAction:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "on"

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_video_auto_review"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getBackKeyRecStop()Z

    move-result v3

    if-nez v3, :cond_6

    .line 809
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isStopPreviewAfterRecordStop()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 810
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->stopPreview()V

    .line 812
    :cond_2
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->setVideoStateOnly(I)V

    .line 813
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.DisplayCamcorderPostview"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 862
    :goto_1
    if-eqz v0, :cond_3

    .line 863
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saved uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastVideo(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 866
    :cond_3
    return-void

    .line 782
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "recordmode_dual"

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_video_record_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "recordmode_smart_zoom"

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_video_record_mode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 786
    :cond_5
    const-string v2, "1280x960"

    goto/16 :goto_0

    .line 816
    :cond_6
    move-object v1, v0

    .line 817
    .local v1, savedUriForThread:Landroid/net/Uri;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/lge/camera/controller/camcorder/RecordingController$3;

    invoke-direct {v4, p0, v1}, Lcom/lge/camera/controller/camcorder/RecordingController$3;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController;Landroid/net/Uri;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mAfterRecordingThread:Ljava/lang/Thread;

    .line 859
    iget-object v3, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mAfterRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method public getEndTime()J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    return-wide v0
.end method

.method public getIsFileSizeLimitReached()Z
    .locals 1

    .prologue
    .line 907
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsFileSizeLimitReached:Z

    return v0
.end method

.method public getRecordingDurationLimit()J
    .locals 2

    .prologue
    .line 271
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingDurationLimit:J

    return-wide v0
.end method

.method public getRecordingSizeLimit()J
    .locals 2

    .prologue
    .line 267
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    return-wide v0
.end method

.method public getStopRecordingDuringCall()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingDuringCall:Z

    return v0
.end method

.method public getVideoFile()Lcom/lge/camera/VideoFile;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    return-object v0
.end method

.method public getVideoFileSize()J
    .locals 2

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFileSize:J

    return-wide v0
.end method

.method public hide()V
    .locals 4

    .prologue
    const v3, 0x7f09017c

    const v2, 0x7f090177

    const/4 v1, 0x4

    .line 236
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideTimeIndicator()V
    .locals 2

    .prologue
    const v1, 0x7f090177

    .line 253
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public initController()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const v9, 0x7f09017c

    const v8, 0x3ecccccd

    .line 71
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f0900cc

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 72
    iput-wide v10, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    .line 73
    iput-wide v10, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    .line 74
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f090179

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 75
    .local v5, recTimeText:Landroid/widget/TextView;
    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 76
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v2

    .line 78
    .local v2, currentCarrierCode:I
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f090180

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RecProgressBar;

    .line 79
    .local v4, pb:Lcom/lge/camera/components/RecProgressBar;
    invoke-virtual {v4}, Lcom/lge/camera/components/RecProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 80
    .local v3, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 81
    .local v1, bpWidth:I
    iget v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 82
    .local v0, bpHeight:I
    invoke-virtual {v4, v1, v0}, Lcom/lge/camera/components/RecProgressBar;->initRecProgressBar(II)V

    .line 84
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->needProgressBar()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 85
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v9}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 91
    :goto_0
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isMMSRecording()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 92
    const/4 v6, 0x6

    if-ne v2, v6, :cond_1

    .line 93
    const v6, 0x3e99999a

    iput v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mScaleWidthHeight:F

    .line 101
    :goto_1
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    .line 103
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->setRecLayout()V

    .line 104
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/camcorder/RecordingController;->startRotation(I)V

    .line 105
    return-void

    .line 88
    :cond_0
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v9}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 95
    :cond_1
    iput v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mScaleWidthHeight:F

    goto :goto_1

    .line 98
    :cond_2
    iput v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mScaleWidthHeight:F

    goto :goto_1
.end method

.method public initVideoFile(I)V
    .locals 8
    .parameter "purpose"

    .prologue
    const/4 v2, 0x1

    .line 166
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, fileDirectory:Ljava/lang/String;
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/util/FileNamer;->getFileName(Landroid/content/Context;IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 170
    .local v7, fileName:Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    .line 173
    new-instance v0, Lcom/lge/camera/VideoFile;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v6, v7, p1}, Lcom/lge/camera/VideoFile;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    .line 175
    :cond_0
    return-void
.end method

.method public isAfterRecordingThreadAlive()Z
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mAfterRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mAfterRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    const/4 v0, 0x1

    .line 773
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAvailableResumeVideo()Z
    .locals 1

    .prologue
    .line 643
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mCheckResumeVideo:Z

    return v0
.end method

.method public isRecordedLengthTooShort()Z
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1228
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getFunctionUITimer()I

    move-result v4

    if-nez v4, :cond_0

    .line 1229
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1230
    .local v0, currentTime:J
    iget-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    sub-long v4, v0, v4

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMinRecordingTime()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 1231
    const-string v4, "CameraApp"

    const-string v5, "recorded time: %d ms"

    new-array v6, v2, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    sub-long v7, v0, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    .end local v0           #currentTime:J
    :goto_0
    return v2

    .line 1235
    :cond_0
    iget-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    iget-wide v6, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    sub-long/2addr v4, v6

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getMinRecordingTime()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 1236
    const-string v4, "CameraApp"

    const-string v5, "recorded time: %d ms"

    new-array v6, v2, [Ljava/lang/Object;

    iget-wide v7, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    iget-wide v9, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 1241
    goto :goto_0
.end method

.method public isRecordingControllerInit()Z
    .locals 1

    .prologue
    .line 1249
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    return v0
.end method

.method public isStopRecordingByMountedAction()Z
    .locals 1

    .prologue
    .line 662
    iget-boolean v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsStopRecordingByMountedAction:Z

    return v0
.end method

.method public isUHDmode()Z
    .locals 3

    .prologue
    .line 393
    const-string v0, "3840x2160"

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_preview_size_on_device"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    const/4 v0, 0x1

    .line 397
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needProgressBar()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 196
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 199
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getRequestedVideoSizeLimit()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getMaxVideoDurationInMs()I

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onPause()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1173
    const-string v2, "CameraApp"

    const-string v3, "onPause-start"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    iget-boolean v2, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v2, :cond_5

    .line 1179
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getStopRecordingDuringCall()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1180
    const-string v2, "CameraApp"

    const-string v3, "While recording, Received a call. Video state set to idle!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 1225
    :goto_0
    return-void

    .line 1185
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v1

    .line 1186
    .local v1, state:I
    const-string v2, "CameraApp"

    const-string v3, "Camcorder state: %d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    if-ne v1, v8, :cond_1

    .line 1188
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->waitStartRecordingThreadDone()V

    .line 1189
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->waitStopRecordingThreadDone()V

    .line 1191
    :cond_1
    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9

    .line 1193
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v8}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 1194
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getFunctionUITimer()I

    move-result v2

    if-nez v2, :cond_3

    .line 1195
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    .line 1197
    :cond_3
    iget-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    iget-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/lge/camera/controller/camcorder/RecordingController;->setRecDurationTime(JJ)V

    .line 1198
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->stopRecordingByPausing()V

    .line 1199
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    .line 1206
    :cond_4
    :goto_1
    iput-boolean v7, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mCheckResumeVideo:Z

    .line 1209
    .end local v1           #state:I
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isChangingToOtherActivity()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1210
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1211
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "animation"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1212
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.Rotate"

    invoke-interface {v2, v3, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1215
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1216
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->stopHeatingwarning()V

    .line 1219
    :cond_7
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mAfterRecordingThread:Ljava/lang/Thread;

    if-eqz v2, :cond_8

    .line 1220
    iget-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mAfterRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1221
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mAfterRecordingThread:Ljava/lang/Thread;

    .line 1223
    :cond_8
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onPause()V

    .line 1224
    const-string v2, "CameraApp"

    const-string v3, " onPause-end"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1200
    .restart local v1       #state:I
    :cond_9
    if-eq v1, v8, :cond_a

    if-ne v1, v7, :cond_4

    .line 1202
    :cond_a
    const-string v2, "CameraApp"

    const-string v3, "RecordingController: Video state NO_REACTION after wait threads."

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    const-string v2, "CameraApp"

    const-string v3, "Force video state to idle"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1164
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    .line 1165
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setPreviewVisibility(I)V

    .line 1166
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setEffectRecorderPausing(Z)V

    .line 1168
    :cond_0
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onResume()V

    .line 1169
    return-void
.end method

.method public pauseRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 565
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 566
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 568
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mPauseTime:J

    .line 570
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getAudiozoomStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopAudiozoom()V

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setAudiozoombuttonstate()V

    .line 577
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 578
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->pauseAndResumeRecording(Z)V

    .line 582
    :goto_0
    iput-boolean v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mCheckResumeVideo:Z

    .line 584
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 585
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setVideoFlash(Z)V

    .line 588
    :cond_3
    return-void

    .line 580
    :cond_4
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->pause()V

    goto :goto_0
.end method

.method public resetRecTime()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 992
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f090179

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 993
    .local v2, recTimeText:Landroid/widget/TextView;
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 995
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getCarrierCode()I

    move-result v0

    .line 997
    .local v0, currentCarrierCode:I
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isMMSRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    .line 999
    const-string v3, "00/60"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    :goto_0
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f090180

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RecProgressBar;

    .line 1005
    .local v1, pb:Lcom/lge/camera/components/RecProgressBar;
    invoke-virtual {v1, v5}, Lcom/lge/camera/components/RecProgressBar;->setProgress(I)V

    .line 1007
    iput-boolean v5, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsFileSizeLimitReached:Z

    .line 1008
    return-void

    .line 1001
    .end local v1           #pb:Lcom/lge/camera/components/RecProgressBar;
    :cond_0
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v4, 0x7f0b0176

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public resumeRecording()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 591
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 593
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 594
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setVideoFlash(Z)V

    .line 597
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 599
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 600
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v7}, Lcom/lge/camera/ControllerFunction;->pauseAndResumeRecording(Z)V

    .line 605
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 606
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->isAudiozoom_ExceptionCase(Z)Z

    move-result v1

    .line 607
    .local v1, isAudiozoom_exection:Z
    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getAudiozoomStartInRecording()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 608
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->startAudiozoom()V

    .line 611
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->setAudiozoombuttonstate()V

    .line 613
    .end local v1           #isAudiozoom_exection:Z
    :cond_3
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isUseFlashTemperature()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "torch"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->GetXo_thermal()D

    move-result-wide v2

    sget-wide v4, Lcom/lge/camera/util/CheckStatusManager;->TEMPERATURE_FLASH_RECORDING_STANDARD:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_4

    .line 619
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_flash"

    const-string v4, "off"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 620
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 621
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "fromQuickButton"

    invoke-virtual {v0, v2, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 622
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.setting.SetFlashMode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v0}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 623
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v3, 0x7f0b025e

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->toast(I)V

    .line 624
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setFlashOffByHighTemperature(Z)V

    .line 625
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v3, 0xa

    invoke-interface {v2, v3, v7, v6}, Lcom/lge/camera/ControllerFunction;->setButtonRemainEnabled(IZZ)V

    .line 628
    const-string v2, "CameraApp"

    const-string v3, "flash off by callStartRecording"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_4
    return-void

    .line 602
    :cond_5
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->resume()V

    goto :goto_0
.end method

.method public resumeUpdateReordingTime()V
    .locals 6

    .prologue
    .line 635
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 636
    .local v0, now:J
    iget-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    iget-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mPauseTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    .line 637
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mPauseTime:J

    .line 638
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "com.lge.camera.command.UpdateRecordingTime"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 639
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mCheckResumeVideo:Z

    .line 640
    return-void
.end method

.method public setEndTime(J)V
    .locals 0
    .parameter "endTime"

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    .line 57
    return-void
.end method

.method public setIsFileSizeLimitReached(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 911
    iput-boolean p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsFileSizeLimitReached:Z

    .line 912
    return-void
.end method

.method public setRecDurationTime(JJ)V
    .locals 7
    .parameter "startTime"
    .parameter "endTime"

    .prologue
    const-wide/16 v1, 0x0

    .line 647
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 648
    iget-wide v3, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mPauseTime:J

    cmp-long v3, v3, v1

    if-lez v3, :cond_1

    .line 649
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 650
    .local v0, compensationTime:I
    :goto_0
    iget-wide v3, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mPauseTime:J

    sub-long v3, p3, v3

    int-to-long v5, v0

    add-long/2addr v3, v5

    add-long/2addr p1, v3

    .line 651
    iput-wide v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mPauseTime:J

    .line 652
    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    move-wide p1, v1

    .line 655
    .end local v0           #compensationTime:I
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    sub-long v2, p3, p1

    invoke-virtual {v1, v2, v3}, Lcom/lge/camera/VideoFile;->setRecordingTime_duration(J)V

    .line 656
    return-void

    .line 649
    :cond_2
    const/16 v0, 0x1f4

    goto :goto_0
.end method

.method public setRecIndicatorLayout(III)V
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "leftMargin"

    .prologue
    .line 108
    iput p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorWidth:I

    .line 109
    iput p2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorHeight:I

    .line 110
    iput p3, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorLeftMargin:I

    .line 112
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->setRecLayout()V

    .line 115
    :cond_0
    return-void
.end method

.method public setRecLayout()V
    .locals 10

    .prologue
    const/16 v9, 0xf

    const/16 v8, 0xe

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 118
    iget-boolean v4, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v4, :cond_1

    .line 119
    const-string v4, "CameraApp"

    const-string v5, "RecordingController is not initialize."

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v5, 0x7f090176

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 123
    .local v2, recAreaLayout:Landroid/view/View;
    const v4, 0x7f0a018c

    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camcorder/RecordingController;->getPixelFromDimens(I)I

    move-result v0

    .line 124
    .local v0, paddingLeft:I
    const v4, 0x7f0a018d

    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/camcorder/RecordingController;->getPixelFromDimens(I)I

    move-result v1

    .line 126
    .local v1, paddingTop:I
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 128
    :cond_2
    invoke-virtual {v2, v0, v1, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 133
    :goto_1
    if-eqz v2, :cond_0

    .line 134
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 135
    .local v3, recIndicatorArea:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v3}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 137
    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 138
    iget v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorWidth:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 139
    iget v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorHeight:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 140
    iget v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorLeftMargin:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 142
    iget v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorLeftMargin:I

    if-nez v4, :cond_4

    .line 143
    const/16 v4, 0x9

    invoke-virtual {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 144
    invoke-virtual {v3, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 160
    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 130
    .end local v3           #recIndicatorArea:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    invoke-virtual {v2, v1, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    .line 146
    .restart local v3       #recIndicatorArea:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_4
    invoke-virtual {v3, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    .line 149
    :cond_5
    iget v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorWidth:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 150
    iget v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorHeight:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 151
    iget v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorLeftMargin:I

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 153
    iget v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecIndicatorLeftMargin:I

    if-nez v4, :cond_6

    .line 154
    const/16 v4, 0xa

    invoke-virtual {v3, v4, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 155
    invoke-virtual {v3, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    .line 157
    :cond_6
    invoke-virtual {v3, v8, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2
.end method

.method public setScaleWidthHeight(F)V
    .locals 0
    .parameter "ScaleWidthHeight"

    .prologue
    .line 1245
    iput p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mScaleWidthHeight:F

    .line 1246
    return-void
.end method

.method public setStopRecordingDuringCall(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingDuringCall:Z

    .line 189
    return-void
.end method

.method public setVideoFile(Lcom/lge/camera/VideoFile;)V
    .locals 0
    .parameter "videoFile"

    .prologue
    .line 178
    if-eqz p1, :cond_0

    .line 179
    iput-object p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    .line 181
    :cond_0
    return-void
.end method

.method public setVideoFileSize(J)V
    .locals 0
    .parameter "size"

    .prologue
    .line 279
    iput-wide p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFileSize:J

    .line 280
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f09017c

    const/4 v2, 0x4

    .line 212
    iget-boolean v0, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getSubMenuMode()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->needProgressBar()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 228
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090177

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 225
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public startRecording()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 285
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->isUHDmode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->isAfterRecordingThreadAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isThumbmailThreadAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v12}, Lcom/lge/camera/ControllerFunction;->showDefaultQuickButton(Z)V

    .line 292
    const/4 v8, 0x0

    .line 293
    .local v8, bInitRecording:Z
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/AppControlUtil;->StopVoiceRec(Landroid/app/Activity;I)V

    .line 294
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AudioUtil;->setStopNotificationStream(Landroid/content/Context;)V

    .line 296
    invoke-virtual {p0, v12}, Lcom/lge/camera/controller/camcorder/RecordingController;->setStopRecordingDuringCall(Z)V

    .line 297
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 298
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->setVideoSize()V

    .line 300
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecordingSizeLimit : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRecordingDurationLimit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingDurationLimit:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getFreeSpace()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, v12}, Lcom/lge/camera/VideoRecorder;->setMaxFileSize(JJI)Z

    .line 303
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v0

    invoke-static {v0}, Lcom/lge/camera/VideoRecorder;->setOrientationHint(I)V

    .line 306
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v12}, Lcom/lge/camera/ControllerFunction;->setShowCameraErrorPopup(Z)V

    .line 307
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getRecordingDurationLimit()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const-wide/32 v0, 0x6ddd00

    :goto_1
    iput-wide v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingDurationLimit:J

    .line 309
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 311
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v1}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    iget-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingDurationLimit:J

    long-to-int v4, v4

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getFreeSpace()J

    move-result-wide v5

    invoke-interface/range {v0 .. v6}, Lcom/lge/camera/ControllerFunction;->initializeRecordingEffect(Ljava/lang/String;JIJ)V

    .line 313
    const/4 v8, 0x1

    .line 328
    :goto_2
    if-eqz v8, :cond_a

    .line 338
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->callStartRecording()V

    .line 340
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v0}, Lcom/lge/camera/VideoFile;->getAudiozoomcontent()I

    move-result v0

    if-ne v0, v13, :cond_2

    .line 342
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v0, v12}, Lcom/lge/camera/VideoFile;->setAudiozoomcontent(I)V

    .line 344
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 345
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientation()I

    move-result v7

    .line 346
    .local v7, Orientation:I
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/lge/camera/VideoFile;->setAudiozoomExection_state(Z)V

    .line 347
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v13}, Lcom/lge/camera/ControllerFunction;->isAudiozoom_ExceptionCase(Z)Z

    move-result v9

    .line 348
    .local v9, isAudiozoom_exection:Z
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/lge/camera/util/AudioUtil;->setAudiodevice(Landroid/content/Context;I)V

    .line 349
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v11

    .line 351
    .local v11, startingDegree:I
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v11}, Lcom/lge/camera/ControllerFunction;->setStartrecordingdegree(I)V

    .line 353
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNewUxModel()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 354
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "on"

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_audiozoom"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 356
    if-eqz v9, :cond_7

    .line 389
    .end local v7           #Orientation:I
    .end local v9           #isAudiozoom_exection:Z
    .end local v11           #startingDegree:I
    :cond_3
    :goto_3
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->startHeatingWarning()V

    goto/16 :goto_0

    .line 307
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getRecordingDurationLimit()J

    move-result-wide v0

    goto/16 :goto_1

    .line 315
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 316
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mVideoFile:Lcom/lge/camera/VideoFile;

    invoke-virtual {v1}, Lcom/lge/camera/VideoFile;->getFilePath()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingSizeLimit:J

    iget-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mRecordingDurationLimit:J

    long-to-int v4, v4

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getFreeSpace()J

    move-result-wide v5

    invoke-interface/range {v0 .. v6}, Lcom/lge/camera/ControllerFunction;->initializeRecordingDual(Ljava/lang/String;JIJ)V

    .line 318
    const/4 v8, 0x1

    goto/16 :goto_2

    .line 321
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-static {v0}, Lcom/lge/camera/VideoRecorder;->init(Lcom/lge/camera/ControllerFunction;)Landroid/media/MediaRecorder;

    .line 322
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->isInitialized()Z

    move-result v8

    .line 323
    new-instance v10, Lcom/lge/camera/listeners/MediaRecorderListener;

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-direct {v10, v0}, Lcom/lge/camera/listeners/MediaRecorderListener;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 324
    .local v10, listener:Lcom/lge/camera/listeners/MediaRecorderListener;
    invoke-static {v10}, Lcom/lge/camera/VideoRecorder;->setInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)Z

    .line 325
    invoke-static {v10}, Lcom/lge/camera/VideoRecorder;->setErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)Z

    goto/16 :goto_2

    .line 368
    .end local v10           #listener:Lcom/lge/camera/listeners/MediaRecorderListener;
    .restart local v7       #Orientation:I
    .restart local v9       #isAudiozoom_exection:Z
    .restart local v11       #startingDegree:I
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->startAudiozoom()V

    .line 369
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v13}, Lcom/lge/camera/ControllerFunction;->setAudiozoomStartInRecording(Z)V

    goto :goto_3

    .line 372
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v12}, Lcom/lge/camera/ControllerFunction;->setAudiozoomStartInRecording(Z)V

    goto :goto_3

    .line 375
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    if-nez v0, :cond_3

    if-nez v9, :cond_3

    const-string v0, "on"

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_audiozoom"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 378
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->startAudiozoom()V

    goto :goto_3

    .line 383
    .end local v7           #Orientation:I
    .end local v9           #isAudiozoom_exection:Z
    .end local v11           #startingDegree:I
    :cond_a
    invoke-direct {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->restoreToIdle()V

    .line 384
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_3
.end method

.method public startRotation(I)V
    .locals 14
    .parameter "degree"

    .prologue
    const/16 v13, 0xf

    const/16 v12, 0xe

    const/16 v11, 0xc

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 916
    iget-boolean v6, p0, Lcom/lge/camera/controller/Controller;->mInit:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6, v10}, Lcom/lge/camera/ControllerFunction;->isCamcorderRotation(Z)Z

    move-result v6

    if-nez v6, :cond_1

    .line 917
    :cond_0
    const-string v6, "CameraApp"

    const-string v7, "RecordingController is not initialize."

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    :goto_0
    return-void

    .line 921
    :cond_1
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f09017d

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 922
    .local v3, progressLayout:Landroid/view/View;
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f09017e

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/lge/camera/components/RotateLayout;

    .line 923
    .local v4, progressRotate:Lcom/lge/camera/components/RotateLayout;
    if-eqz v3, :cond_2

    if-nez v4, :cond_3

    .line 925
    :cond_2
    const-string v6, "CameraApp"

    const-string v7, "cannot startRotation progress is null."

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 928
    :cond_3
    invoke-virtual {v4, p1}, Lcom/lge/camera/components/RotateLayout;->rotateLayout(I)V

    .line 929
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->setRecLayout()V

    .line 931
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ori = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v7, 0x7f090178

    invoke-interface {v6, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/lge/camera/components/RotateLayout;

    .line 934
    .local v5, recTimeText:Lcom/lge/camera/components/RotateLayout;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 935
    .local v2, params:Landroid/widget/RelativeLayout$LayoutParams;
    const v6, 0x7f0a0181

    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/camcorder/RecordingController;->getPixelFromDimens(I)I

    move-result v0

    .line 936
    .local v0, margin_landscape:I
    const v6, 0x7f0a0182

    invoke-virtual {p0, v6}, Lcom/lge/camera/controller/camcorder/RecordingController;->getPixelFromDimens(I)I

    move-result v1

    .line 937
    .local v1, margin_portrait:I
    invoke-static {v2}, Lcom/lge/camera/util/Common;->resetLayoutParameter(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 939
    const-string v6, "NO_R2L"

    invoke-virtual {v3, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 940
    const-string v6, "NO_R2L"

    invoke-virtual {v4, v6}, Lcom/lge/camera/components/RotateLayout;->setTag(Ljava/lang/Object;)V

    .line 941
    const-string v6, "NO_R2L"

    invoke-virtual {v5, v6}, Lcom/lge/camera/components/RotateLayout;->setTag(Ljava/lang/Object;)V

    .line 943
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, p1, v9}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 944
    invoke-virtual {v5, p1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 945
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 946
    invoke-virtual {v2, v11, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 947
    invoke-virtual {v2, v12, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 948
    invoke-virtual {v2, v9, v9, v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 988
    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 950
    :cond_4
    const/16 v6, 0x9

    invoke-virtual {v2, v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 951
    invoke-virtual {v2, v13, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 952
    invoke-virtual {v2, v0, v9, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 954
    :cond_5
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/16 v7, 0x5a

    invoke-static {v6, p1, v7}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 955
    invoke-virtual {v5, p1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 956
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 957
    const/16 v6, 0xb

    invoke-virtual {v2, v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 958
    invoke-virtual {v2, v13, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 959
    invoke-virtual {v2, v9, v9, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 961
    :cond_6
    invoke-virtual {v2, v11, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 962
    invoke-virtual {v2, v12, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 963
    invoke-virtual {v2, v9, v9, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 965
    :cond_7
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/16 v7, 0xb4

    invoke-static {v6, p1, v7}, Lcom/lge/camera/util/Util;->isEqualDegree(Landroid/content/res/Resources;II)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 966
    invoke-virtual {v5, p1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 967
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 968
    invoke-virtual {v2, v11, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 969
    invoke-virtual {v2, v12, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 970
    invoke-virtual {v2, v9, v9, v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 972
    :cond_8
    const/16 v6, 0x9

    invoke-virtual {v2, v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 973
    invoke-virtual {v2, v13, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 974
    invoke-virtual {v2, v0, v9, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 977
    :cond_9
    invoke-virtual {v5, p1}, Lcom/lge/camera/components/RotateLayout;->setAngle(I)V

    .line 978
    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 979
    const/16 v6, 0xb

    invoke-virtual {v2, v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 980
    invoke-virtual {v2, v13, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 981
    invoke-virtual {v2, v9, v9, v1, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1

    .line 983
    :cond_a
    invoke-virtual {v2, v11, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 984
    invoke-virtual {v2, v12, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 985
    invoke-virtual {v2, v9, v9, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto/16 :goto_1
.end method

.method public stopRecording()V
    .locals 1

    .prologue
    .line 666
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->stopRecording(Z)V

    .line 667
    return-void
.end method

.method public stopRecording(Z)V
    .locals 6
    .parameter "isFromMountedAction"

    .prologue
    const/4 v1, 0x0

    .line 670
    iput-boolean p1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsStopRecordingByMountedAction:Z

    .line 671
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AppControlUtil;->UnblockAlarmInRecording(Landroid/app/Activity;)V

    .line 676
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->hideTimeIndicator()V

    .line 678
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->setQuickButton(ZI)V

    .line 680
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getAudiozoomStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopAudiozoom()V

    .line 684
    :cond_0
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHeadsetstate()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 685
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/lge/camera/util/AudioUtil;->setAudiodevice(Landroid/content/Context;I)V

    .line 687
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 688
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->setStartrecordingdegree(I)V

    .line 689
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setForced_audiozoom(Z)V

    .line 691
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/VideoFile;->getAudiozoomExection_state()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 692
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->setAudiozoomException()V

    .line 695
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/lge/camera/controller/camcorder/RecordingController$1;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/camcorder/RecordingController$1;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingThread:Ljava/lang/Thread;

    .line 729
    iget-object v0, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 731
    invoke-static {}, Lcom/lge/camera/util/CheckStatusManager;->useBackLightControlInRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 732
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Common;->backlightControl(Landroid/app/Activity;)V

    .line 735
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_4

    .line 736
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.HideLiveSnapshotButton"

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 738
    :cond_4
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 739
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideRecoridngStopButton()V

    .line 741
    :cond_5
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 742
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopHeatingwarning()V

    .line 745
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getObjectTrackingState()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v0

    if-nez v0, :cond_7

    .line 746
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-interface/range {v0 .. v5}, Lcom/lge/camera/ControllerFunction;->startObjectTrackingFocus(IIIII)V

    .line 749
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 750
    return-void

    .line 688
    :cond_8
    const/16 v0, 0x10e

    goto :goto_0
.end method

.method public stopRecordingByPausing()V
    .locals 9

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 1011
    const-string v0, "CameraApp"

    const-string v2, "stopRecordingByPausing()"

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/AppControlUtil;->UnblockAlarmInRecording(Landroid/app/Activity;)V

    .line 1016
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getAudiozoomStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopAudiozoom()V

    .line 1019
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 1020
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 1022
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->getFunctionUITimer()I

    move-result v0

    if-nez v0, :cond_1

    .line 1023
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    .line 1025
    :cond_1
    iget-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    iget-wide v4, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mEndTime:J

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/lge/camera/controller/camcorder/RecordingController;->setRecDurationTime(JJ)V

    .line 1026
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStartTime:J

    .line 1029
    :cond_2
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1030
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_0
    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->setStartrecordingdegree(I)V

    .line 1031
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v8}, Lcom/lge/camera/ControllerFunction;->setForced_audiozoom(Z)V

    .line 1032
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getVideoFile()Lcom/lge/camera/VideoFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/VideoFile;->getAudiozoomExection_state()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1033
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->setAudiozoomException()V

    .line 1036
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/camcorder/RecordingController;->hideTimeIndicator()V

    .line 1037
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->setQuickButton(ZI)V

    .line 1038
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v8}, Lcom/lge/camera/ControllerFunction;->showDefaultQuickButton(Z)V

    .line 1039
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isEffectsCamcorderActive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1040
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopRecordingEffect()V

    .line 1052
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 1053
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_preview_size_on_device"

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/camera/controller/camcorder/RecordingController;->getSaveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1054
    .local v7, savedUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->checkStorage(Z)V

    .line 1055
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setFlashOffByHighTemperature(Z)V

    .line 1057
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/camcorder/RecordingController$4;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/camcorder/RecordingController$4;-><init>(Lcom/lge/camera/controller/camcorder/RecordingController;)V

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1064
    if-eqz v7, :cond_c

    .line 1065
    const-string v0, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saved uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v7}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLastVideo(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 1067
    const-string v0, "on"

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_video_auto_review"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1068
    .local v6, autoReview:Z
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v0

    or-int/2addr v6, v0

    .line 1069
    if-eqz v6, :cond_5

    .line 1070
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 1071
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setShutterButtonImage(ZI)V

    .line 1083
    .end local v6           #autoReview:Z
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isAttachMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1084
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.HideLiveSnapshotButton"

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 1085
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v8}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 1086
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateThumbnailButtonVisibility()V

    .line 1088
    :cond_6
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1089
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideRecoridngStopButton()V

    .line 1091
    :cond_7
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportHeat_detection()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1092
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopHeatingwarning()V

    .line 1096
    :cond_8
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportObjectTracking()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getObjectTrackingState()I

    move-result v0

    if-eqz v0, :cond_9

    .line 1098
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->unregisterObjectCallback()V

    .line 1099
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    invoke-interface/range {v0 .. v5}, Lcom/lge/camera/ControllerFunction;->startObjectTrackingFocus(IIIII)V

    .line 1102
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/lge/camera/util/AudioUtil;->setAudioFocus(Landroid/content/Context;Z)V

    .line 1103
    return-void

    .line 1030
    .end local v7           #savedUri:Landroid/net/Uri;
    :cond_a
    const/16 v0, 0x10e

    goto/16 :goto_0

    .line 1045
    :cond_b
    invoke-static {}, Lcom/lge/camera/VideoRecorder;->release()V

    .line 1046
    iput-boolean v8, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mCheckResumeVideo:Z

    .line 1047
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    .line 1048
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1049
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    goto/16 :goto_1

    .line 1074
    .restart local v7       #savedUri:Landroid/net/Uri;
    :cond_c
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 1075
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "com.lge.camera.command.DisplayPreview"

    invoke-interface {v0, v2}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public waitStartRecordingThreadDone()V
    .locals 3

    .prologue
    .line 552
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_0

    .line 554
    :try_start_0
    const-string v1, "CameraApp"

    const-string v2, "Wait for start recording done.."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 556
    const-string v1, "CameraApp"

    const-string v2, "Start recording done."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "Failed to wait for start recording done!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public waitStopRecordingThreadDone()V
    .locals 3

    .prologue
    .line 754
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 755
    const-string v1, "CameraApp"

    const-string v2, "Wait for stop recording done.."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    iget-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 757
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mStopRecordingThread:Ljava/lang/Thread;

    .line 758
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/camera/controller/camcorder/RecordingController;->mIsStopRecordingByMountedAction:Z

    .line 759
    const-string v1, "CameraApp"

    const-string v2, "Stop recording done.."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 761
    :catch_0
    move-exception v0

    .line 762
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "Failed to join stop recording thread!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
