.class public Lcom/lge/camera/module/ContinuousShot;
.super Lcom/lge/camera/module/Module;
.source "ContinuousShot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/module/ContinuousShot$OneShotPreviewCallback;,
        Lcom/lge/camera/module/ContinuousShot$ContinuousShotSaveThread;
    }
.end annotation


# static fields
.field private static final CONTINUOUS_SHOT_TIME:I


# instance fields
.field private deviceDegree:I

.field private mCheckOneShotCallbackTime:J

.field private mContiShotErrorOccur:Z

.field private mContinueShotCount:I

.field private mContinuousShot:Ljava/util/Timer;

.field private mContinuousShotSaveImageThread:Ljava/lang/Thread;

.field private mCount:I

.field private mInProgressLatch:Ljava/util/concurrent/CountDownLatch;

.field private mIsContinuousShotSaveImageThreadRunning:Z

.field private mIsContinuousShotStopUserAction:Z

.field private mPushContineShotCount:I

.field private mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field private mSound_isPlayed:Z

.field private previewHeight:I

.field private previewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->getContinuousShotTime()I

    move-result v0

    sput v0, Lcom/lge/camera/module/ContinuousShot;->CONTINUOUS_SHOT_TIME:I

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 3
    .parameter "function"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/lge/camera/module/Module;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 37
    iput v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I

    .line 38
    iput v0, p0, Lcom/lge/camera/module/ContinuousShot;->mPushContineShotCount:I

    .line 39
    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    .line 40
    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z

    .line 41
    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotStopUserAction:Z

    .line 42
    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    .line 43
    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;

    .line 44
    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z

    .line 45
    iput v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCount:I

    .line 46
    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShot:Ljava/util/Timer;

    .line 49
    iput v0, p0, Lcom/lge/camera/module/ContinuousShot;->deviceDegree:I

    .line 50
    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mSound_isPlayed:Z

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCheckOneShotCallbackTime:J

    .line 650
    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mInProgressLatch:Ljava/util/concurrent/CountDownLatch;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/lge/camera/module/ContinuousShot;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lge/camera/module/ContinuousShot;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCount:I

    return v0
.end method

.method static synthetic access$108(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/camera/module/ContinuousShot;->mCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/lge/camera/module/ContinuousShot;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCheckOneShotCallbackTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/lge/camera/module/ContinuousShot;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-wide p1, p0, Lcom/lge/camera/module/ContinuousShot;->mCheckOneShotCallbackTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/lge/camera/module/ContinuousShot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->clearSaveImageQueue()V

    return-void
.end method

.method static synthetic access$1300(Lcom/lge/camera/module/ContinuousShot;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->previewWidth:I

    return v0
.end method

.method static synthetic access$1500(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->previewHeight:I

    return v0
.end method

.method static synthetic access$1600(Lcom/lge/camera/module/ContinuousShot;[BI)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/module/ContinuousShot;->saveContiShotImage2([BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/lge/camera/module/ContinuousShot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->notifySaveDone()V

    return-void
.end method

.method static synthetic access$1800(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->mPushContineShotCount:I

    return v0
.end method

.method static synthetic access$1900(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->deviceDegree:I

    return v0
.end method

.method static synthetic access$200(Lcom/lge/camera/module/ContinuousShot;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotStopUserAction:Z

    return v0
.end method

.method static synthetic access$202(Lcom/lge/camera/module/ContinuousShot;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotStopUserAction:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I

    return v0
.end method

.method static synthetic access$308(Lcom/lge/camera/module/ContinuousShot;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 35
    iget v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/lge/camera/module/ContinuousShot;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/lge/camera/module/ContinuousShot;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$600(Lcom/lge/camera/module/ContinuousShot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->stopSaveImageThread()V

    return-void
.end method

.method static synthetic access$700(Lcom/lge/camera/module/ContinuousShot;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/camera/module/ContinuousShot;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z

    return v0
.end method

.method static synthetic access$802(Lcom/lge/camera/module/ContinuousShot;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z

    return p1
.end method

.method static synthetic access$900(Lcom/lge/camera/module/ContinuousShot;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mSound_isPlayed:Z

    return v0
.end method

.method static synthetic access$902(Lcom/lge/camera/module/ContinuousShot;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/lge/camera/module/ContinuousShot;->mSound_isPlayed:Z

    return p1
.end method

.method private checkErrorAndGetFileName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 506
    const/4 v6, 0x0

    .line 507
    .local v6, fileName:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z

    if-nez v0, :cond_0

    .line 508
    invoke-static {}, Lcom/lge/camera/util/FileNamer;->get()Lcom/lge/camera/util/FileNamer;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCurrentStorage()I

    move-result v3

    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/lge/camera/util/FileNamer;->getFileName(Landroid/content/Context;IILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 511
    :cond_0
    return-object v6
.end method

.method private clearSaveImageQueue()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 599
    const-string v0, "CameraApp"

    const-string v1, "clearSaveImageQueue"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 602
    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_1

    .line 606
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 607
    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    .line 609
    :cond_1
    return-void
.end method

.method private initLatch()V
    .locals 3

    .prologue
    .line 652
    const-string v0, "CameraApp"

    const-string v1, "Init cont. shot latch"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mInProgressLatch:Ljava/util/concurrent/CountDownLatch;

    .line 654
    return-void
.end method

.method private initSaveImageQueue()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 581
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_0

    .line 582
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    .line 583
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    .line 593
    :goto_0
    return-void

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 586
    iput-object v1, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    .line 587
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueShot:Ljava/util/concurrent/BlockingQueue;

    .line 589
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 590
    iput-object v1, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    .line 591
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mQueueContinueOrientation:Ljava/util/concurrent/BlockingQueue;

    goto :goto_0
.end method

.method private notifySaveDone()V
    .locals 3

    .prologue
    .line 656
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mInProgressLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mInProgressLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 662
    :goto_0
    return-void

    .line 660
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "Cont. shot latch null! Ignore notifySaveDone()."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveContiShotImage2([BI)Z
    .locals 26
    .parameter "data"
    .parameter "rotation"

    .prologue
    .line 404
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[saveContiShotImage2] mPreviewing ["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isPreviewing()Z

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "]"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[saveContiShotImage2] mPausing ["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "] mContiShotErrorOccur ["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "]"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-direct/range {p0 .. p0}, Lcom/lge/camera/module/ContinuousShot;->checkErrorAndGetFileName()Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, fileName:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 410
    const/16 v21, 0x0

    .line 502
    :goto_0
    return v21

    .line 413
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCurrentStorageDirectory()Ljava/lang/String;

    move-result-object v8

    .line 414
    .local v8, filePath:Ljava/lang/String;
    const/4 v6, 0x0

    .line 416
    .local v6, exifData:[B
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v7

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2, v7}, Lcom/lge/camera/util/ExifUtil;->setNewExifInformation([BILandroid/location/Location;F)[B

    move-result-object v6

    .line 418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    .line 419
    .local v23, startTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 420
    .local v4, dateTaken:J
    const/16 v21, 0x0

    .line 423
    .local v21, ret:Z
    if-eqz v6, :cond_1

    .line 425
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getImageHandler()Lcom/lge/camera/util/ImageHandler;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/lge/camera/util/ImageHandler;->addJpegImage(Landroid/content/ContentResolver;Ljava/lang/String;J[BLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v25

    .line 444
    .local v25, tUri:Landroid/net/Uri;
    :goto_1
    const-string v1, "CameraApp"

    const-string v2, "saved cont. shot uri:%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v25, v7, v9

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    if-nez v25, :cond_2

    .line 446
    const/16 v21, 0x0

    goto :goto_0

    .line 435
    .end local v25           #tUri:Landroid/net/Uri;
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getImageHandler()Lcom/lge/camera/util/ImageHandler;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCurrentLocation()Landroid/location/Location;

    move-result-object v15

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object v11, v3

    move-wide v12, v4

    move-object/from16 v14, p1

    move-object/from16 v16, v8

    invoke-virtual/range {v9 .. v18}, Lcom/lge/camera/util/ImageHandler;->addJpegImage(Landroid/content/ContentResolver;Ljava/lang/String;J[BLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v25

    .restart local v25       #tUri:Landroid/net/Uri;
    goto :goto_1

    .line 448
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v0, v25

    invoke-interface {v1, v0}, Lcom/lge/camera/ControllerFunction;->setSavedImageUri(Landroid/net/Uri;)V

    .line 449
    const/16 v25, 0x0

    .line 451
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v22

    .line 452
    .local v22, savedImageUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_3

    .line 453
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 455
    :cond_3
    if-eqz v22, :cond_4

    .line 456
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v1

    move-object/from16 v0, v22

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    const-string v1, "CameraApp"

    const-string v2, "Set last thumbnail uri:%s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v22, v7, v9

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSavedImageUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v7, 0x1

    invoke-interface {v1, v2, v7}, Lcom/lge/camera/ControllerFunction;->setLastThumb(Landroid/net/Uri;Z)V

    .line 460
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->updateThumbnailButton()V

    .line 463
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getImageListRotation()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    move-object/from16 v0, p0

    iget v1, v0, Lcom/lge/camera/module/ContinuousShot;->mPushContineShotCount:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lge/camera/module/ContinuousShot;->mPushContineShotCount:I

    .line 465
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SAVE IMAGE pushContineShotCount["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/lge/camera/module/ContinuousShot;->mPushContineShotCount:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "] "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "mImageListUri.SIZE()["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getImageListUri()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "]"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    const/16 v21, 0x1

    .line 472
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 473
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 470
    :cond_4
    const-string v1, "CameraApp"

    const-string v2, "saveContiShotImage2() error: savedImageUri is null"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v2, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 475
    .end local v22           #savedImageUri:Landroid/net/Uri;
    .end local v25           #tUri:Landroid/net/Uri;
    :catch_0
    move-exception v20

    .line 476
    .local v20, ise:Ljava/lang/IllegalStateException;
    const-string v1, "CameraApp"

    const-string v2, "IllegalStateException while compressing image."

    move-object/from16 v0, v20

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/module/ContinuousShot;->stopContinuousShotThread()V

    .line 478
    const/16 v21, 0x0

    .line 483
    .end local v20           #ise:Ljava/lang/IllegalStateException;
    :cond_5
    :goto_3
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ret = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    if-eqz v21, :cond_8

    .line 485
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSaveURI()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 486
    invoke-static {}, Lcom/lge/camera/util/Common;->useSecureLockImage()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/lge/camera/util/AppControlUtil;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/AppControlUtil;->checkGalleryEnabledOnGuestMode(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 490
    :cond_6
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getSaveURI()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/camera/util/SecureImageUtil;->addSecureLockImageUri(Landroid/net/Uri;)V

    .line 492
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->setSavedFileName(Ljava/lang/String;)V

    .line 494
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ".jpg"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "key_uplus_box"

    invoke-interface {v7, v9}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "on"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v1, v2, v7}, Lcom/lge/camera/util/Util;->requestUpBoxBackupPhoto(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 500
    :cond_8
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "save continuous shot image elapse time = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long v9, v9, v23

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "ms"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 479
    :catch_1
    move-exception v19

    .line 480
    .local v19, ex:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "Exception while compressing image."

    move-object/from16 v0, v19

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 481
    const/16 v21, 0x0

    goto/16 :goto_3
.end method

.method private stopSaveImageThread()V
    .locals 2

    .prologue
    .line 558
    const-string v0, "CameraApp"

    const-string v1, "stopSaveImageThread"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z

    .line 560
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->notifySaveDone()V

    .line 561
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->clearSaveImageQueue()V

    .line 562
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 565
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;

    .line 566
    return-void
.end method


# virtual methods
.method public checkCurrentShotMode()Z
    .locals 3

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_continuous"

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

.method public isRunning()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z

    return v0
.end method

.method public stopByUserAction()V
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->stopSoundContinuous()V

    .line 573
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotStopUserAction:Z

    .line 574
    return-void
.end method

.method public stopContinuousShot()V
    .locals 3

    .prologue
    .line 319
    const-string v0, "CameraApp"

    const-string v1, "stopContinuousShot()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShot:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShot:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 324
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShot:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShot:Ljava/util/Timer;

    .line 327
    :cond_0
    return-void
.end method

.method public stopContinuousShotThread()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 515
    const-string v4, "CameraApp"

    const-string v5, "stopContinuousShotThread"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v7}, Lcom/lge/camera/ControllerFunction;->setContinuousShotAlived(Z)V

    .line 517
    invoke-virtual {p0}, Lcom/lge/camera/module/ContinuousShot;->stopContinuousShot()V

    .line 518
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->stopSaveImageThread()V

    .line 520
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 521
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 522
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 524
    :cond_0
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 525
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 529
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 530
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_voiceshutter"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 532
    .local v2, mVoiceShutterValue:Ljava/lang/String;
    if-eqz v2, :cond_2

    const-string v4, "on"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 533
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "com.lge.camera.command.SetVoiceShutterMode"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 536
    .end local v2           #mVoiceShutterValue:Ljava/lang/String;
    :cond_2
    invoke-static {v7, v7}, Lcom/lge/camera/properties/FunctionProperties;->isCafSupported(II)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_camera_shot_mode"

    const-string v6, "shotmode_continuous"

    invoke-interface {v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 539
    :try_start_0
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 540
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isMTKChipset()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 541
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->initFocusAreas()V

    .line 542
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 544
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 545
    .local v3, parameters:Landroid/hardware/Camera$Parameters;
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v3}, Lcom/lge/camera/ControllerFunction;->getDefaultFocusModeParameterForMultiWindowAF(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, defaultFocusMode:Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 547
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v3}, Lcom/lge/camera/ControllerFunction;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 548
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "### setFocusMode-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    .end local v0           #defaultFocusMode:Ljava/lang/String;
    .end local v3           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_4
    :goto_0
    iget-object v4, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4, v7}, Lcom/lge/camera/ControllerFunction;->setShutterButtonClicked(Z)V

    .line 555
    :cond_5
    return-void

    .line 550
    :catch_0
    move-exception v1

    .line 551
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v4, "CameraApp"

    const-string v5, "RuntimeException : "

    invoke-static {v4, v5, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public takePicture()Z
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v0, 0x0

    .line 69
    const-string v2, "CameraApp"

    const-string v3, "[Module]ContinuousShot::takePicture"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 72
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 74
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->is3dSupportedModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v0}, Lcom/lge/camera/ControllerFunction;->set3DSwitchVisible(Z)V

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->setMainButtonDisable()V

    .line 79
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setThumbnailButtonVisibility(I)V

    .line 80
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->clearFocusState()V

    .line 81
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 83
    iput v0, p0, Lcom/lge/camera/module/ContinuousShot;->mCount:I

    .line 84
    iput v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I

    .line 85
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v2

    const-wide/16 v4, 0x6

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v2

    long-to-int v2, v2

    rsub-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/lge/camera/module/ContinuousShot;->mCount:I

    .line 87
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getAvailablePictureCount()J

    move-result-wide v2

    long-to-int v2, v2

    rsub-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/lge/camera/module/ContinuousShot;->mContinueShotCount:I

    .line 89
    :cond_1
    iput v0, p0, Lcom/lge/camera/module/ContinuousShot;->mPushContineShotCount:I

    .line 90
    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContiShotErrorOccur:Z

    .line 91
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v2

    iput v2, p0, Lcom/lge/camera/module/ContinuousShot;->deviceDegree:I

    .line 93
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->initSaveImageQueue()V

    .line 95
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getPreferenceGroup()Lcom/lge/camera/setting/PreferenceGroup;

    move-result-object v2

    const-string v3, "key_camera_shot_mode"

    invoke-virtual {v2, v3}, Lcom/lge/camera/setting/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v9

    .line 96
    .local v9, shotModePref:Lcom/lge/camera/setting/ListPreference;
    if-nez v9, :cond_2

    .line 97
    const-string v2, "CameraApp"

    const-string v3, "shotModePref is null"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :goto_0
    return v0

    .line 100
    :cond_2
    invoke-virtual {v9}, Lcom/lge/camera/setting/ListPreference;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v8

    .line 101
    .local v8, pictureSize:[I
    const/4 v9, 0x0

    .line 102
    aget v2, v8, v0

    iput v2, p0, Lcom/lge/camera/module/ContinuousShot;->previewWidth:I

    .line 103
    aget v2, v8, v10

    iput v2, p0, Lcom/lge/camera/module/ContinuousShot;->previewHeight:I

    .line 105
    iput-boolean v10, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotSaveImageThreadRunning:Z

    .line 106
    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mIsContinuousShotStopUserAction:Z

    .line 107
    iput-object v11, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShotSaveImageThread:Ljava/lang/Thread;

    .line 109
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v10}, Lcom/lge/camera/ControllerFunction;->setContinuousShotAlived(Z)V

    .line 110
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v3, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getDeviceDegree()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setImageRotationDegree(I)V

    .line 113
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2, v3}, Lcom/lge/camera/properties/FunctionProperties;->isCafSupported(II)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "shotmode_continuous"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    .line 116
    .local v7, parameters:Landroid/hardware/Camera$Parameters;
    const-string v2, "auto"

    invoke-virtual {v7, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 117
    iget-object v2, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v7}, Lcom/lge/camera/ControllerFunction;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 118
    const-string v2, "CameraApp"

    const-string v3, "### setFocusMode-auto"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .end local v7           #parameters:Landroid/hardware/Camera$Parameters;
    :cond_3
    :goto_1
    new-instance v2, Ljava/util/Timer;

    const-string v3, "ContinuousShot"

    invoke-direct {v2, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShot:Ljava/util/Timer;

    .line 125
    iput-boolean v0, p0, Lcom/lge/camera/module/ContinuousShot;->mSound_isPlayed:Z

    .line 126
    new-instance v1, Lcom/lge/camera/module/ContinuousShot$1;

    invoke-direct {v1, p0}, Lcom/lge/camera/module/ContinuousShot$1;-><init>(Lcom/lge/camera/module/ContinuousShot;)V

    .line 310
    .local v1, taskContinuous:Ljava/util/TimerTask;
    invoke-direct {p0}, Lcom/lge/camera/module/ContinuousShot;->initLatch()V

    .line 313
    iget-object v0, p0, Lcom/lge/camera/module/ContinuousShot;->mContinuousShot:Ljava/util/Timer;

    sget v2, Lcom/lge/camera/module/ContinuousShot;->CONTINUOUS_SHOT_TIME:I

    int-to-long v2, v2

    sget v4, Lcom/lge/camera/module/ContinuousShot;->CONTINUOUS_SHOT_TIME:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 314
    iget-object v0, p0, Lcom/lge/camera/module/Module;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v0

    const/4 v2, 0x3

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Lcom/lge/camera/util/MainHandler;->sendEmptyMessageDelayed(IJ)Z

    move v0, v10

    .line 315
    goto/16 :goto_0

    .line 120
    .end local v1           #taskContinuous:Ljava/util/TimerTask;
    :catch_0
    move-exception v6

    .line 121
    .local v6, e:Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "RuntimeException : "

    invoke-static {v2, v3, v6}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public waitForSaveDone()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 664
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mInProgressLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_1

    .line 665
    const/4 v1, 0x0

    .line 667
    .local v1, saveDone:Z
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/module/ContinuousShot;->mInProgressLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 672
    :goto_0
    if-nez v1, :cond_0

    .line 673
    const-string v2, "CameraApp"

    const-string v3, "Waiting for cont. shot done timeout!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    .end local v1           #saveDone:Z
    :goto_1
    return-void

    .line 668
    .restart local v1       #saveDone:Z
    :catch_0
    move-exception v0

    .line 669
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "CameraApp"

    const-string v3, "Wait for cont. shot done has interrupted!"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 676
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "Cont. shot save done."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 680
    .end local v1           #saveDone:Z
    :cond_1
    const-string v2, "CameraApp"

    const-string v3, "Cont. shot latch null! Don\'t wait."

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
