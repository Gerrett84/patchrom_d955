.class public Lcom/lge/camera/EffectsBase;
.super Ljava/lang/Object;
.source "EffectsBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/EffectsBase$EffectsListener;
    }
.end annotation


# static fields
.field public static final EFFECT_ALL:I = 0x4

.field public static final EFFECT_BACKDROPPER:I = 0x2

.field public static final EFFECT_DUAL_CAMERA:I = 0x6

.field public static final EFFECT_DUAL_RECORD:I = 0x5

.field public static final EFFECT_GF_BIG_EYES:I = 0x1

.field public static final EFFECT_GF_BIG_MOUTH:I = 0x2

.field public static final EFFECT_GF_BIG_NOSE:I = 0x4

.field public static final EFFECT_GF_SMALL_EYES:I = 0x5

.field public static final EFFECT_GF_SMALL_MOUTH:I = 0x3

.field public static final EFFECT_GF_SQUEEZE:I = 0x0

.field public static final EFFECT_GOOFY_FACE:I = 0x1

.field public static final EFFECT_MSG_DONE_LEARNING:I = 0x1

.field public static final EFFECT_MSG_EFFECTS_STOPPED:I = 0x3

.field public static final EFFECT_MSG_ERROR:I = 0x6

.field public static final EFFECT_MSG_PREVIEW_DONE:I = 0x5

.field public static final EFFECT_MSG_RECORDING_DONE:I = 0x4

.field public static final EFFECT_MSG_STARTED_LEARNING:I = 0x0

.field public static final EFFECT_MSG_SURFACE_TEARDOWN:I = 0x7

.field public static final EFFECT_MSG_SWITCHING_EFFECT:I = 0x2

.field public static final EFFECT_NONE:I = 0x0

.field public static final EFFECT_SMART_ZOOM_RECORD:I = 0x7

.field public static final EFFECT_STOP_CALL_FROM_RESET_MENU:I = 0x65

.field public static final EFFECT_STOP_CALL_FROM_SWAP_CAMCORDER:I = 0x66

.field public static final EFFECT_STOP_CALL_NORMAL:I = 0x64

.field public static final NUM_OF_GF_EFFECTS:I = 0x6

.field private static final PAUSE_AND_RESUME_INPUT_NAME:Ljava/lang/String; = "pauseNresumeRecording"

.field protected static final STATE_CONFIGURE:I = 0x0

.field protected static final STATE_PREVIEW:I = 0x3

.field public static final STATE_RECORD:I = 0x4

.field protected static final STATE_RELEASED:I = 0x5

.field protected static final STATE_STARTING_PREVIEW:I = 0x2

.field protected static final STATE_WAITING_FOR_SURFACE:I = 0x1


# instance fields
.field private isPausing:Z

.field public mCalledFrom:I

.field protected mCameraDevice:Landroid/hardware/Camera;

.field protected mCameraFacing:I

.field protected mCaptureRate:D

.field protected mContext:Landroid/content/Context;

.field protected mCurrentEffect:I

.field private mDualRecorderSourceReadyCallback:Lcom/lge/camera/platform/PlatformDevice$IPlatformDeviceDualRec;

.field protected mEffect:I

.field private mEffectParameter:Ljava/lang/Object;

.field private mEffectsListener:Lcom/lge/camera/EffectsBase$EffectsListener;

.field private mEffectsPre:I

.field protected mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field protected mFd:Ljava/io/FileDescriptor;

.field protected mGraphEnv:Landroid/filterfw/GraphEnvironment;

.field protected mGraphId:I

.field private mHandler:Landroid/os/Handler;

.field protected mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mIsHavePostedRunnable:Z

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field protected mMaxDurationMs:I

.field protected mMaxFileSize:J

.field private mMsgPre:I

.field protected mOldRunner:Landroid/filterfw/core/GraphRunner;

.field protected mOrientationHint:I

.field protected mOutputFile:Ljava/lang/String;

.field protected mPIP_SubWindow_Height:I

.field protected mPIP_SubWindow_Thick:I

.field protected mPIP_SubWindow_Width:I

.field protected mPIP_SubWindow_X:I

.field protected mPIP_SubWindow_Y:I

.field protected mPreviewHeight:I

.field protected mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

.field protected mPreviewWidth:I

.field protected mProfile:Landroid/media/CamcorderProfile;

.field private mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

.field protected mRunner:Landroid/filterfw/core/GraphRunner;

.field protected mRunnerDoneCallback:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

.field protected mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

.field protected mState:I

.field protected mTargetZoomAreaHeight:I

.field protected mTargetZoomAreaWidth:I

.field protected mTextureHeight:I

.field private mTextureSource:Landroid/graphics/SurfaceTexture;

.field protected mTextureWidth:I

.field protected mVideoBitrate:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/high16 v6, 0x4320

    const/high16 v5, 0x42f0

    const/4 v4, 0x0

    const/high16 v3, 0x42b4

    const/4 v2, 0x0

    .line 167
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/EffectsBase;->mCaptureRate:D

    .line 104
    iput v2, p0, Lcom/lge/camera/EffectsBase;->mOrientationHint:I

    .line 105
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/EffectsBase;->mMaxFileSize:J

    .line 106
    iput v2, p0, Lcom/lge/camera/EffectsBase;->mMaxDurationMs:I

    .line 107
    iput v2, p0, Lcom/lge/camera/EffectsBase;->mCameraFacing:I

    .line 108
    const v0, 0x1e8480

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mVideoBitrate:I

    .line 110
    iput v2, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    .line 111
    iput v2, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    .line 118
    iput-object v4, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 119
    iput-object v4, p0, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 131
    iput v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    .line 133
    const/16 v0, 0x64

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mCalledFrom:I

    .line 135
    iput v2, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_X:I

    .line 136
    iput v2, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Y:I

    .line 137
    const/16 v0, 0xa0

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Width:I

    .line 138
    const/16 v0, 0x5a

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Height:I

    .line 139
    const/4 v0, 0x3

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Thick:I

    .line 144
    iput-object v4, p0, Lcom/lge/camera/EffectsBase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 146
    iput-boolean v2, p0, Lcom/lge/camera/EffectsBase;->isPausing:Z

    .line 786
    new-instance v0, Lcom/lge/camera/EffectsBase$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/EffectsBase$1;-><init>(Lcom/lge/camera/EffectsBase;)V

    iput-object v0, p0, Lcom/lge/camera/EffectsBase;->mDualRecorderSourceReadyCallback:Lcom/lge/camera/platform/PlatformDevice$IPlatformDeviceDualRec;

    .line 918
    new-instance v0, Lcom/lge/camera/EffectsBase$2;

    invoke-direct {v0, p0}, Lcom/lge/camera/EffectsBase$2;-><init>(Lcom/lge/camera/EffectsBase;)V

    iput-object v0, p0, Lcom/lge/camera/EffectsBase;->mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    .line 1054
    new-instance v0, Lcom/lge/camera/EffectsBase$3;

    invoke-direct {v0, p0}, Lcom/lge/camera/EffectsBase$3;-><init>(Lcom/lge/camera/EffectsBase;)V

    iput-object v0, p0, Lcom/lge/camera/EffectsBase;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    .line 1161
    new-instance v0, Lcom/lge/camera/EffectsBase$4;

    invoke-direct {v0, p0}, Lcom/lge/camera/EffectsBase$4;-><init>(Lcom/lge/camera/EffectsBase;)V

    iput-object v0, p0, Lcom/lge/camera/EffectsBase;->mRunnerDoneCallback:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    .line 1241
    iput-boolean v2, p0, Lcom/lge/camera/EffectsBase;->mIsHavePostedRunnable:Z

    .line 168
    iput-object p1, p0, Lcom/lge/camera/EffectsBase;->mContext:Landroid/content/Context;

    .line 169
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mContext:Landroid/content/Context;

    const/high16 v1, 0x4000

    invoke-static {v0, v1}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Thick:I

    .line 170
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mTargetZoomAreaWidth:I

    .line 175
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mTargetZoomAreaHeight:I

    .line 203
    :goto_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lge/camera/EffectsBase;->mHandler:Landroid/os/Handler;

    .line 204
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mDualRecorderSourceReadyCallback:Lcom/lge/camera/platform/PlatformDevice$IPlatformDeviceDualRec;

    invoke-static {v0}, Lcom/lge/camera/platform/PlatformDevice;->setOnSurfaceTextureSourceReady(Lcom/lge/camera/platform/PlatformDevice$IPlatformDeviceDualRec;)V

    .line 205
    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mTargetZoomAreaWidth:I

    .line 182
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mTargetZoomAreaHeight:I

    goto :goto_0

    .line 187
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mTargetZoomAreaWidth:I

    .line 191
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mTargetZoomAreaHeight:I

    goto :goto_0

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mTargetZoomAreaWidth:I

    .line 198
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mContext:Landroid/content/Context;

    invoke-static {v0, v6}, Lcom/lge/camera/util/Util;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mTargetZoomAreaHeight:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/lge/camera/EffectsBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/lge/camera/EffectsBase;->awaitLatch()V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/camera/EffectsBase;)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mTextureSource:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$102(Lcom/lge/camera/EffectsBase;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lge/camera/EffectsBase;->mTextureSource:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$200(Lcom/lge/camera/EffectsBase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/lge/camera/EffectsBase;->countDownLatch()V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/camera/EffectsBase;Ljava/lang/Exception;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/lge/camera/EffectsBase;->raiseError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$400(Lcom/lge/camera/EffectsBase;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/lge/camera/EffectsBase;->mIsHavePostedRunnable:Z

    return v0
.end method

.method static synthetic access$402(Lcom/lge/camera/EffectsBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/lge/camera/EffectsBase;->mIsHavePostedRunnable:Z

    return p1
.end method

.method static synthetic access$500(Lcom/lge/camera/EffectsBase;)Lcom/lge/camera/EffectsBase$EffectsListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mEffectsListener:Lcom/lge/camera/EffectsBase$EffectsListener;

    return-object v0
.end method

.method private awaitLatch()V
    .locals 5

    .prologue
    .line 1345
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/EffectsBase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_0

    .line 1346
    iget-object v1, p0, Lcom/lge/camera/EffectsBase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1351
    :cond_0
    :goto_0
    return-void

    .line 1348
    :catch_0
    move-exception v0

    .line 1349
    .local v0, e1:Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "Latch fail : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private countDownLatch()V
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 1355
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 1356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/EffectsBase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1358
    :cond_0
    return-void
.end method

.method private declared-synchronized initializeEffect(Z)V
    .locals 13
    .parameter "forceReset"

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 577
    monitor-enter p0

    :try_start_0
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-----  START: initializeEffect() - Reset anyway? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    if-nez p1, :cond_0

    iget v7, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    iget v8, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    if-eq v7, v8, :cond_10

    .line 579
    :cond_0
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Initializing effect. Preview size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewWidth:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Effect is changed from mCurrentEffect("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") to mEffect("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    iget v7, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    if-eq v7, v1, :cond_1

    iget v7, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    if-eq v7, v12, :cond_1

    .line 583
    const-string v7, "CameraApp"

    const-string v8, "Re-initialize FilterFramework before starting initializeEffect()"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    .line 585
    .local v0, backupEffect:I
    invoke-direct {p0}, Lcom/lge/camera/EffectsBase;->initializeFilterFramework()V

    .line 586
    iput v0, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    .line 590
    .end local v0           #backupEffect:I
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->isConfigureLandscape()Z

    move-result v7

    if-eqz v7, :cond_6

    move v4, v6

    .line 591
    .local v4, orientation:I
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->isConfigureLandscape()Z

    move-result v7

    if-eqz v7, :cond_7

    move v3, v6

    .line 593
    .local v3, jpegRotationDegree:I
    :goto_1
    iget-object v7, p0, Lcom/lge/camera/EffectsBase;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v7, :cond_3

    .line 594
    iget v7, p0, Lcom/lge/camera/EffectsBase;->mCameraFacing:I

    if-nez v7, :cond_8

    .line 595
    .local v1, cameraId:I
    :goto_2
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v5, "landscape"

    .line 597
    .local v5, screenOrientation:Ljava/lang/String;
    :goto_3
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_a

    .line 598
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v7, 0x18

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "previewSurface"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "previewWidth"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "previewHeight"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "cameraId"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "pipPosX"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_X:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xa

    const-string v9, "pipPosY"

    aput-object v9, v7, v8

    const/16 v8, 0xb

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Y:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xc

    const-string v9, "pipWidth"

    aput-object v9, v7, v8

    const/16 v8, 0xd

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Width:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xe

    const-string v9, "pipHeight"

    aput-object v9, v7, v8

    const/16 v8, 0xf

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Height:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x10

    const-string v9, "pipRectThick"

    aput-object v9, v7, v8

    const/16 v8, 0x11

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Thick:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x12

    const-string v9, "orientationDegree"

    aput-object v9, v7, v8

    const/16 v8, 0x13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x14

    const-string v9, "setBitmapDoneListener"

    aput-object v9, v7, v8

    const/16 v8, 0x15

    sget-object v9, Lcom/lge/camera/platform/PlatformDevice;->mSetBitmapDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$SetBitmapDoneListener;

    aput-object v9, v7, v8

    const/16 v8, 0x16

    const-string v9, "screenOrientation"

    aput-object v9, v7, v8

    const/16 v8, 0x17

    aput-object v5, v7, v8

    invoke-virtual {v6, v7}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    .line 624
    :cond_2
    :goto_4
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    const/4 v7, 0x7

    if-ne v6, v7, :cond_b

    .line 625
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v7, 0x20

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "previewSurface"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "previewWidth"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "previewHeight"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "textureWidth"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mTextureWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "textureHeight"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mTextureHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xa

    const-string v9, "pipPosX"

    aput-object v9, v7, v8

    const/16 v8, 0xb

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_X:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xc

    const-string v9, "pipPosY"

    aput-object v9, v7, v8

    const/16 v8, 0xd

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Y:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xe

    const-string v9, "pipWidth"

    aput-object v9, v7, v8

    const/16 v8, 0xf

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Width:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x10

    const-string v9, "pipHeight"

    aput-object v9, v7, v8

    const/16 v8, 0x11

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Height:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x12

    const-string v9, "pipRectThick"

    aput-object v9, v7, v8

    const/16 v8, 0x13

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Thick:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x14

    const-string v9, "objectWidth"

    aput-object v9, v7, v8

    const/16 v8, 0x15

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mTargetZoomAreaWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x16

    const-string v9, "objectHeight"

    aput-object v9, v7, v8

    const/16 v8, 0x17

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mTargetZoomAreaHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x18

    const-string v9, "initObjectX"

    aput-object v9, v7, v8

    const/16 v8, 0x19

    sget v9, Lcom/lge/camera/controller/PIPController;->SMARTZOOM_DEFAULT_X:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x1a

    const-string v9, "initObjectY"

    aput-object v9, v7, v8

    const/16 v8, 0x1b

    sget v9, Lcom/lge/camera/controller/PIPController;->SMARTZOOM_DEFAULT_Y:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x1c

    const-string v9, "setBitmapDoneListener"

    aput-object v9, v7, v8

    const/16 v8, 0x1d

    sget-object v9, Lcom/lge/camera/platform/PlatformDevice;->mSetBitmapDoneListener_SmartZoom:Lcom/lge/filterpacks/SmartZoomFilter$SetBitmapDoneListener;

    aput-object v9, v7, v8

    const/16 v8, 0x1e

    const-string v9, "screenOrientation"

    aput-object v9, v7, v8

    const/16 v8, 0x1f

    aput-object v5, v7, v8

    invoke-virtual {v6, v7}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    .line 648
    .end local v1           #cameraId:I
    .end local v5           #screenOrientation:Ljava/lang/String;
    :cond_3
    :goto_5
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mState:I

    if-eq v6, v11, :cond_4

    iget v6, p0, Lcom/lge/camera/EffectsBase;->mState:I

    if-ne v6, v10, :cond_5

    .line 650
    :cond_4
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    const/4 v7, 0x2

    invoke-virtual {p0, v6, v7}, Lcom/lge/camera/EffectsBase;->sendMessage(II)V

    .line 653
    :cond_5
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    packed-switch v6, :pswitch_data_0

    .line 675
    :pswitch_0
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown effect ID"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 577
    .end local v3           #jpegRotationDegree:I
    .end local v4           #orientation:I
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 590
    :cond_6
    const/16 v4, 0x5a

    goto/16 :goto_0

    .line 591
    .restart local v4       #orientation:I
    :cond_7
    const/16 v3, 0x10e

    goto/16 :goto_1

    .restart local v3       #jpegRotationDegree:I
    :cond_8
    move v1, v6

    .line 594
    goto/16 :goto_2

    .line 595
    .restart local v1       #cameraId:I
    :cond_9
    :try_start_1
    const-string v5, "portrait"

    goto/16 :goto_3

    .line 610
    .restart local v5       #screenOrientation:Ljava/lang/String;
    :cond_a
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    if-ne v6, v12, :cond_2

    .line 611
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v7, 0x1a

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "previewSurface"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "previewWidth"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "previewHeight"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "cameraId"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    const-string v9, "pipPosX"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_X:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xa

    const-string v9, "pipPosY"

    aput-object v9, v7, v8

    const/16 v8, 0xb

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Y:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xc

    const-string v9, "pipWidth"

    aput-object v9, v7, v8

    const/16 v8, 0xd

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Width:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0xe

    const-string v9, "pipHeight"

    aput-object v9, v7, v8

    const/16 v8, 0xf

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Height:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x10

    const-string v9, "pipRectThick"

    aput-object v9, v7, v8

    const/16 v8, 0x11

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Thick:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x12

    const-string v9, "orientationDegree"

    aput-object v9, v7, v8

    const/16 v8, 0x13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x14

    const-string v9, "jpegRotationDegree"

    aput-object v9, v7, v8

    const/16 v8, 0x15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x16

    const-string v9, "setBitmapDoneListener"

    aput-object v9, v7, v8

    const/16 v8, 0x17

    sget-object v9, Lcom/lge/camera/platform/PlatformDevice;->mSetBitmapDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$SetBitmapDoneListener;

    aput-object v9, v7, v8

    const/16 v8, 0x18

    const-string v9, "screenOrientation"

    aput-object v9, v7, v8

    const/16 v8, 0x19

    aput-object v5, v7, v8

    invoke-virtual {v6, v7}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 642
    :cond_b
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "previewSurface"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "previewWidth"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewWidth:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "previewHeight"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mPreviewHeight:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    const-string v9, "orientation"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    iget v9, p0, Lcom/lge/camera/EffectsBase;->mOrientationHint:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 655
    .end local v1           #cameraId:I
    .end local v5           #screenOrientation:Ljava/lang/String;
    :pswitch_1
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v7, p0, Lcom/lge/camera/EffectsBase;->mContext:Landroid/content/Context;

    const v8, 0x7f060011

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/lge/camera/EffectsBase;->mGraphId:I

    .line 677
    :goto_6
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    iput v6, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    .line 679
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    iput-object v6, p0, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 680
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget v7, p0, Lcom/lge/camera/EffectsBase;->mGraphId:I

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/GraphEnvironment;->getRunner(II)Landroid/filterfw/core/GraphRunner;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 682
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-nez v6, :cond_e

    .line 683
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error, mGraphEnv.getRunner is null, mGraphId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lge/camera/EffectsBase;->mGraphId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 712
    .end local v3           #jpegRotationDegree:I
    .end local v4           #orientation:I
    :goto_7
    monitor-exit p0

    return-void

    .line 658
    .restart local v3       #jpegRotationDegree:I
    .restart local v4       #orientation:I
    :pswitch_2
    :try_start_2
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualCameraAndRecordingVersion1_0()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 659
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v7, p0, Lcom/lge/camera/EffectsBase;->mContext:Landroid/content/Context;

    const v8, 0x7f06000f

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/lge/camera/EffectsBase;->mGraphId:I

    goto :goto_6

    .line 661
    :cond_c
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v7, p0, Lcom/lge/camera/EffectsBase;->mContext:Landroid/content/Context;

    const v8, 0x7f060010

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/lge/camera/EffectsBase;->mGraphId:I

    goto :goto_6

    .line 665
    :pswitch_3
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualCameraAndRecordingVersion1_0()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 666
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v7, p0, Lcom/lge/camera/EffectsBase;->mContext:Landroid/content/Context;

    const v8, 0x7f06000d

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/lge/camera/EffectsBase;->mGraphId:I

    goto :goto_6

    .line 668
    :cond_d
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v7, p0, Lcom/lge/camera/EffectsBase;->mContext:Landroid/content/Context;

    const v8, 0x7f06000e

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/lge/camera/EffectsBase;->mGraphId:I

    goto :goto_6

    .line 672
    :pswitch_4
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    iget-object v7, p0, Lcom/lge/camera/EffectsBase;->mContext:Landroid/content/Context;

    const v8, 0x7f060013

    invoke-virtual {v6, v7, v8}, Landroid/filterfw/GraphEnvironment;->loadGraph(Landroid/content/Context;I)I

    move-result v6

    iput v6, p0, Lcom/lge/camera/EffectsBase;->mGraphId:I

    goto/16 :goto_6

    .line 687
    :cond_e
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    iget-object v7, p0, Lcom/lge/camera/EffectsBase;->mRunnerDoneCallback:Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;

    invoke-virtual {v6, v7}, Landroid/filterfw/core/GraphRunner;->setDoneCallback(Landroid/filterfw/core/GraphRunner$OnRunnerDoneListener;)V

    .line 688
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New runner: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Old runner: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mState:I

    if-eq v6, v11, :cond_f

    iget v6, p0, Lcom/lge/camera/EffectsBase;->mState:I

    if-ne v6, v10, :cond_10

    .line 693
    :cond_f
    const-string v6, "CameraApp"

    const-string v7, "### EffectsBase mCameraDevice.stopPreview()"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v6}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 696
    :try_start_3
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 697
    const-string v6, "CameraApp"

    const-string v7, "### EffectsBase mCameraDevice.setPreviewTexture(null)"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 701
    :try_start_4
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v6, :cond_10

    .line 702
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v6}, Landroid/filterfw/core/GraphRunner;->stop()V

    .line 703
    const-string v6, "CameraApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mOldRunner.stop() is called in initializeEffect(): mOldRunner = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    .end local v3           #jpegRotationDegree:I
    .end local v4           #orientation:I
    :cond_10
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->setEffectInputValue()V

    .line 709
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->setFaceDetectOrientation()V

    .line 710
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->setRecordingOrientation()V

    .line 711
    const-string v6, "CameraApp"

    const-string v7, "-----  END: initializeEffect()"

    invoke-static {v6, v7}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 698
    .restart local v3       #jpegRotationDegree:I
    .restart local v4       #orientation:I
    :catch_0
    move-exception v2

    .line 699
    .local v2, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Unable to connect camera to effect input"

    invoke-direct {v6, v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private initializeFilterFramework()V
    .locals 12

    .prologue
    const/4 v11, 0x6

    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 495
    const-string v4, "CameraApp"

    const-string v5, "----- START: initializeFilterFramework()"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    if-eqz v4, :cond_0

    .line 497
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    .line 499
    :cond_0
    new-instance v4, Landroid/filterfw/GraphEnvironment;

    invoke-direct {v4}, Landroid/filterfw/GraphEnvironment;-><init>()V

    iput-object v4, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    .line 500
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    invoke-virtual {v4}, Landroid/filterfw/GraphEnvironment;->createGLEnvironment()V

    .line 502
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "----- Effects framework initializing. profile size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const/4 v1, 0x0

    .line 506
    .local v1, frameWidth:I
    const/4 v0, 0x0

    .line 507
    .local v0, frameHeight:I
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mProfile:Landroid/media/CamcorderProfile;

    iget v1, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 508
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 510
    const/4 v3, 0x0

    .line 511
    .local v3, textureWidth:I
    const/4 v2, 0x0

    .line 512
    .local v2, textureHeight:I
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 513
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 514
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 520
    :goto_0
    iget v4, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    if-ne v4, v10, :cond_4

    .line 521
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualCameraAndRecordingVersion1_0()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 522
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "textureSourceCallback"

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    .line 526
    :goto_1
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v5, 0x10

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "recordingWidth"

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "recordingHeight"

    aput-object v6, v5, v9

    const/4 v6, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "textureWidth"

    aput-object v7, v5, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const-string v6, "textureHeight"

    aput-object v6, v5, v11

    const/4 v6, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "recordingProfile"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    iget-object v7, p0, Lcom/lge/camera/EffectsBase;->mProfile:Landroid/media/CamcorderProfile;

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "learningDoneListener"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    sget-object v7, Lcom/lge/camera/platform/PlatformDevice;->mLearningDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$LearningDoneListener;

    aput-object v7, v5, v6

    const/16 v6, 0xc

    const-string v7, "previewFrameListener"

    aput-object v7, v5, v6

    const/16 v6, 0xd

    sget-object v7, Lcom/lge/camera/platform/PlatformDevice;->mPreviewFrameListener:Lcom/lge/filterpacks/DualRecorderFilter$PreviewFrameListener;

    aput-object v7, v5, v6

    const/16 v6, 0xe

    const-string v7, "recordingDoneListener"

    aput-object v7, v5, v6

    const/16 v6, 0xf

    iget-object v7, p0, Lcom/lge/camera/EffectsBase;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    .line 566
    :goto_2
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v4, :cond_1

    .line 567
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v4}, Landroid/filterfw/core/GraphRunner;->stop()V

    .line 568
    const-string v4, "CameraApp"

    const-string v5, "mRunner.stop() is called in initializeFilterFramework()"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 571
    const/4 v4, -0x1

    iput v4, p0, Lcom/lge/camera/EffectsBase;->mGraphId:I

    .line 572
    iput v8, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    .line 573
    const-string v4, "CameraApp"

    const-string v5, "----- END: initializeFilterFramework()"

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    return-void

    .line 516
    :cond_2
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 517
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    goto/16 :goto_0

    .line 524
    :cond_3
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "textureSourceCallback"

    aput-object v6, v5, v8

    sget-object v6, Lcom/lge/camera/platform/PlatformDevice;->mDualRecorderSourceReadyCallback:Lcom/lge/filterpacks/DualRecorderFilter$SurfaceTextureSourceListener;

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 535
    :cond_4
    iget v4, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    if-ne v4, v11, :cond_6

    .line 536
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualCameraAndRecordingVersion1_0()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 537
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "textureSourceCallback"

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    .line 541
    :goto_3
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "recordingWidth"

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const-string v6, "recordingHeight"

    aput-object v6, v5, v9

    const/4 v6, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "textureWidth"

    aput-object v7, v5, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const-string v6, "textureHeight"

    aput-object v6, v5, v11

    const/4 v6, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "learningDoneListener"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    sget-object v7, Lcom/lge/camera/platform/PlatformDevice;->mLearningDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$LearningDoneListener;

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "previewFrameListener"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    sget-object v7, Lcom/lge/camera/platform/PlatformDevice;->mPreviewFrameListener:Lcom/lge/filterpacks/DualRecorderFilter$PreviewFrameListener;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 539
    :cond_5
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    new-array v5, v9, [Ljava/lang/Object;

    const-string v6, "textureSourceCallback"

    aput-object v6, v5, v8

    sget-object v6, Lcom/lge/camera/platform/PlatformDevice;->mDualRecorderSourceReadyCallback:Lcom/lge/filterpacks/DualRecorderFilter$SurfaceTextureSourceListener;

    aput-object v6, v5, v7

    invoke-virtual {v4, v5}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    goto :goto_3

    .line 548
    :cond_6
    iget v4, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_7

    .line 549
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "textureSourceCallback"

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    aput-object v6, v5, v7

    const-string v6, "recordingWidth"

    aput-object v6, v5, v9

    const/4 v6, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "recordingHeight"

    aput-object v7, v5, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const-string v6, "recordingProfile"

    aput-object v6, v5, v11

    const/4 v6, 0x7

    iget-object v7, p0, Lcom/lge/camera/EffectsBase;->mProfile:Landroid/media/CamcorderProfile;

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "learningDoneListener"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    sget-object v7, Lcom/lge/camera/platform/PlatformDevice;->mLearningDoneListener_SmartZoom:Lcom/lge/filterpacks/SmartZoomFilter$LearningDoneListener;

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "recordingDoneListener"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    iget-object v7, p0, Lcom/lge/camera/EffectsBase;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 557
    :cond_7
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    const/16 v5, 0xc

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "textureSourceCallback"

    aput-object v6, v5, v8

    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mSourceReadyCallback:Landroid/filterpacks/videosrc/SurfaceTextureSource$SurfaceTextureSourceListener;

    aput-object v6, v5, v7

    const-string v6, "recordingWidth"

    aput-object v6, v5, v9

    const/4 v6, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string v7, "recordingHeight"

    aput-object v7, v5, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v10

    const-string v6, "recordingProfile"

    aput-object v6, v5, v11

    const/4 v6, 0x7

    iget-object v7, p0, Lcom/lge/camera/EffectsBase;->mProfile:Landroid/media/CamcorderProfile;

    aput-object v7, v5, v6

    const/16 v6, 0x8

    const-string v7, "learningDoneListener"

    aput-object v7, v5, v6

    const/16 v6, 0x9

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/16 v6, 0xa

    const-string v7, "recordingDoneListener"

    aput-object v7, v5, v6

    const/16 v6, 0xb

    iget-object v7, p0, Lcom/lge/camera/EffectsBase;->mRecordingDoneListener:Landroid/filterpacks/videosink/MediaEncoderFilter$OnRecordingDoneListener;

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Landroid/filterfw/GraphEnvironment;->addReferences([Ljava/lang/Object;)V

    goto/16 :goto_2
.end method

.method public static isEffectSupported(I)Z
    .locals 2
    .parameter "effectId"

    .prologue
    const/4 v0, 0x0

    .line 152
    packed-switch p0, :pswitch_data_0

    .line 163
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 154
    :pswitch_1
    const-string v0, "com.google.android.filterpacks.facedetect.GoofyRenderFilter"

    invoke-static {v0}, Landroid/filterfw/core/Filter;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 156
    :pswitch_2
    const-string v1, "com.google.android.filterpacks.facedetect.GoofyRenderFilter"

    invoke-static {v1}, Landroid/filterfw/core/Filter;->isAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.filterpacks.videoproc.BackDropperFilter"

    invoke-static {v1}, Landroid/filterfw/core/Filter;->isAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 160
    :pswitch_3
    const-string v0, "android.filterpacks.dualrecorder.DualRecorderFilter"

    invoke-static {v0}, Landroid/filterfw/core/Filter;->isAvailable(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private raiseError(Ljava/lang/Exception;)V
    .locals 2
    .parameter "exception"

    .prologue
    .line 1296
    const-string v0, "CameraApp"

    const-string v1, "Error!! raiseError()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mEffectsListener:Lcom/lge/camera/EffectsBase$EffectsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lge/camera/EffectsBase$6;

    invoke-direct {v1, p0, p1}, Lcom/lge/camera/EffectsBase$6;-><init>(Lcom/lge/camera/EffectsBase;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1308
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    const-string v0, "CameraApp"

    const-string v1, "EffectsBase close "

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mHandler:Landroid/os/Handler;

    .line 210
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mContext:Landroid/content/Context;

    .line 211
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mGraphEnv:Landroid/filterfw/GraphEnvironment;

    .line 212
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->stop()V

    .line 214
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->close()V

    .line 215
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->stop()V

    .line 220
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 222
    :cond_1
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 223
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 224
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mEffectsListener:Lcom/lge/camera/EffectsBase$EffectsListener;

    .line 225
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mEffectParameter:Ljava/lang/Object;

    .line 226
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 227
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mTextureSource:Landroid/graphics/SurfaceTexture;

    .line 228
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mFd:Ljava/io/FileDescriptor;

    .line 229
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    .line 230
    iput-object v2, p0, Lcom/lge/camera/EffectsBase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 231
    return-void
.end method

.method public enable3ALocks(Z)V
    .locals 2
    .parameter "toggle"

    .prologue
    .line 1156
    invoke-virtual {p0, p1}, Lcom/lge/camera/EffectsBase;->tryEnable3ALocks(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1157
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempt to lock 3A on camera with no locking support!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1159
    :cond_0
    return-void
.end method

.method public getEffectPre()I
    .locals 1

    .prologue
    .line 1254
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mEffectsPre:I

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMsgtPre()I
    .locals 1

    .prologue
    .line 1260
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mMsgPre:I

    return v0
.end method

.method public getOrientationHint()I
    .locals 1

    .prologue
    .line 445
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mOrientationHint:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 234
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    return v0
.end method

.method protected isConfigureLandscape()Z
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    .line 1340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isHavePostedRunnable()Z
    .locals 1

    .prologue
    .line 1244
    iget-boolean v0, p0, Lcom/lge/camera/EffectsBase;->mIsHavePostedRunnable:Z

    return v0
.end method

.method public isOnPausing(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1361
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set effect pausing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    iput-boolean p1, p0, Lcom/lge/camera/EffectsBase;->isPausing:Z

    .line 1363
    return-void
.end method

.method public pauseAndResumeRecording(Landroid/filterfw/core/Filter;Z)V
    .locals 3
    .parameter "recorder"
    .parameter "pause"

    .prologue
    .line 1321
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isPauseAndResumeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1322
    if-nez p1, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v0

    const-string v1, "recorder"

    invoke-virtual {v0, v1}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object p1

    .line 1327
    :cond_0
    if-eqz p1, :cond_2

    .line 1328
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " #####  recorder.setInputValue pauseNresume = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    const-string v0, "pauseNresumeRecording"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1334
    :cond_1
    :goto_0
    return-void

    .line 1331
    :cond_2
    const-string v0, "CameraApp"

    const-string v1, "recorder is null."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized release()V
    .locals 3

    .prologue
    .line 1222
    monitor-enter p0

    :try_start_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EffectsBase Releasing-start("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 1231
    :goto_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    .line 1234
    const-string v0, "CameraApp"

    const-string v1, "EffectsBase Releasing-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1235
    monitor-exit p0

    return-void

    .line 1228
    :pswitch_0
    const/16 v0, 0x64

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/lge/camera/EffectsBase;->stopPreview(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1224
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public sendMessage(II)V
    .locals 3
    .parameter "effect"
    .parameter "msg"

    .prologue
    .line 1264
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendMessage() effect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isPausing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/EffectsBase;->isPausing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mEffectsListener:Lcom/lge/camera/EffectsBase$EffectsListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1267
    iget-boolean v0, p0, Lcom/lge/camera/EffectsBase;->isPausing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 1268
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mEffectsListener:Lcom/lge/camera/EffectsBase$EffectsListener;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/EffectsBase$EffectsListener;->onEffectsUpdate(II)V

    .line 1269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/EffectsBase;->isPausing:Z

    .line 1293
    :goto_0
    return-void

    .line 1271
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "START post IsHave="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/EffectsBase;->mIsHavePostedRunnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/lge/camera/EffectsBase$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/camera/EffectsBase$5;-><init>(Lcom/lge/camera/EffectsBase;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1284
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/EffectsBase;->mIsHavePostedRunnable:Z

    .line 1285
    iput p1, p0, Lcom/lge/camera/EffectsBase;->mEffectsPre:I

    .line 1286
    iput p2, p0, Lcom/lge/camera/EffectsBase;->mMsgPre:I

    .line 1287
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "END post IsHave="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/EffectsBase;->mIsHavePostedRunnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1290
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: do nothing - mEffectsListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/EffectsBase;->mEffectsListener:Lcom/lge/camera/EffectsBase$EffectsListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHandler = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/EffectsBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCamera(Landroid/hardware/Camera;)V
    .locals 3
    .parameter "cameraDevice"

    .prologue
    .line 238
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 241
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamera cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iput-object p1, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    goto :goto_0
.end method

.method public setCameraFacing(I)V
    .locals 3
    .parameter "facing"

    .prologue
    .line 461
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 462
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraFacing cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :goto_0
    return-void

    .line 465
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraFacing facing : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iput p1, p0, Lcom/lge/camera/EffectsBase;->mCameraFacing:I

    .line 467
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->setRecordingOrientation()V

    goto :goto_0
.end method

.method public setCaptureRate(D)V
    .locals 3
    .parameter "fps"

    .prologue
    .line 310
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 311
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCaptureRate cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :goto_0
    return-void

    .line 314
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setCaptureRate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    iput-wide p1, p0, Lcom/lge/camera/EffectsBase;->mCaptureRate:D

    goto :goto_0
.end method

.method public setEffect(ILjava/lang/Object;)V
    .locals 3
    .parameter "effect"
    .parameter "effectParameter"

    .prologue
    .line 350
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 352
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffect cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_1
    :goto_0
    return-void

    .line 356
    :cond_2
    const-string v1, "CameraApp"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setEffect: effect ID "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", parameter "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mState : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iput p1, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    .line 362
    iput-object p2, p0, Lcom/lge/camera/EffectsBase;->mEffectParameter:Ljava/lang/Object;

    .line 364
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 366
    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lge/camera/EffectsBase;->initializeEffect(Z)V

    goto :goto_0

    .line 356
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected setEffectInputValue()V
    .locals 4

    .prologue
    .line 715
    iget-object v2, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-nez v2, :cond_1

    .line 716
    const-string v2, "CameraApp"

    const-string v3, "mRunner is null !!"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    iget v2, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 722
    :pswitch_0
    iget-object v2, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v2}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v2

    const-string v3, "goofyrenderer"

    invoke-virtual {v2, v3}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v1

    .line 723
    .local v1, goofyFilter:Landroid/filterfw/core/Filter;
    iget-object v2, p0, Lcom/lge/camera/EffectsBase;->mEffectParameter:Ljava/lang/Object;

    if-nez v2, :cond_2

    const/4 v0, 0x0

    .line 724
    .local v0, effectValue:I
    :goto_1
    if-eqz v1, :cond_0

    .line 725
    const-string v2, "currentEffect"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 723
    .end local v0           #effectValue:I
    :cond_2
    iget-object v2, p0, Lcom/lge/camera/EffectsBase;->mEffectParameter:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 719
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setEffectsListener(Lcom/lge/camera/EffectsBase$EffectsListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 376
    iput-object p1, p0, Lcom/lge/camera/EffectsBase;->mEffectsListener:Lcom/lge/camera/EffectsBase$EffectsListener;

    .line 377
    return-void
.end method

.method protected setFaceDetectOrientation()V
    .locals 6

    .prologue
    .line 380
    iget v4, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v4, :cond_0

    .line 381
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v4}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v4

    const-string v5, "rotate"

    invoke-virtual {v4, v5}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 382
    .local v2, rotateFilter:Landroid/filterfw/core/Filter;
    iget-object v4, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v4}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v4

    const-string v5, "metarotate"

    invoke-virtual {v4, v5}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v0

    .line 383
    .local v0, metaRotateFilter:Landroid/filterfw/core/Filter;
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->isConfigureLandscape()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v3, p0, Lcom/lge/camera/EffectsBase;->mOrientationHint:I

    .line 385
    .local v3, rotation:I
    :goto_0
    const-string v4, "rotation"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 386
    rsub-int v4, v3, 0x168

    rem-int/lit16 v1, v4, 0x168

    .line 387
    .local v1, reverseDegrees:I
    const-string v4, "rotation"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 390
    .end local v0           #metaRotateFilter:Landroid/filterfw/core/Filter;
    .end local v1           #reverseDegrees:I
    .end local v2           #rotateFilter:Landroid/filterfw/core/Filter;
    .end local v3           #rotation:I
    :cond_0
    return-void

    .line 384
    .restart local v0       #metaRotateFilter:Landroid/filterfw/core/Filter;
    .restart local v2       #rotateFilter:Landroid/filterfw/core/Filter;
    :cond_1
    iget v4, p0, Lcom/lge/camera/EffectsBase;->mOrientationHint:I

    add-int/lit16 v4, v4, 0x10e

    rem-int/lit16 v3, v4, 0x168

    goto :goto_0
.end method

.method public setIsHavePostedRunnable(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1248
    iput-boolean p1, p0, Lcom/lge/camera/EffectsBase;->mIsHavePostedRunnable:Z

    .line 1249
    return-void
.end method

.method public declared-synchronized setMaxDuration(I)V
    .locals 3
    .parameter "maxDurationMs"

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 300
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxDuration cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    :goto_0
    monitor-exit p0

    return-void

    .line 303
    :cond_1
    :try_start_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setMaxDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iput p1, p0, Lcom/lge/camera/EffectsBase;->mMaxDurationMs:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxFileSize(J)V
    .locals 3
    .parameter "maxFileSize"

    .prologue
    .line 284
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 285
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxFileSize cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :goto_0
    monitor-exit p0

    return-void

    .line 289
    :cond_1
    :try_start_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setMaxFileSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iput-wide p1, p0, Lcom/lge/camera/EffectsBase;->mMaxFileSize:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .locals 3
    .parameter "errorListener"

    .prologue
    .line 485
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 487
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInfoListener cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :goto_0
    return-void

    .line 491
    :cond_1
    iput-object p1, p0, Lcom/lge/camera/EffectsBase;->mErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    goto :goto_0
.end method

.method public setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 3
    .parameter "infoListener"

    .prologue
    .line 475
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 477
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInfoListener cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :goto_0
    return-void

    .line 481
    :cond_1
    iput-object p1, p0, Lcom/lge/camera/EffectsBase;->mInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    goto :goto_0
.end method

.method public setOrientationHint(I)V
    .locals 3
    .parameter "degrees"

    .prologue
    .line 449
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 450
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOrientationHint cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :goto_0
    return-void

    .line 454
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting orientation hint to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iput p1, p0, Lcom/lge/camera/EffectsBase;->mOrientationHint:I

    .line 456
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->setFaceDetectOrientation()V

    .line 457
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->setRecordingOrientation()V

    goto :goto_0
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .locals 3
    .parameter "fd"

    .prologue
    .line 268
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 269
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutputFile cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :goto_0
    return-void

    .line 272
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FileDescriptor:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/EffectsBase;->mOutputFile:Ljava/lang/String;

    .line 274
    iput-object p1, p0, Lcom/lge/camera/EffectsBase;->mFd:Ljava/io/FileDescriptor;

    goto :goto_0
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 3
    .parameter "outputFile"

    .prologue
    .line 258
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 259
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutputFile cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :goto_0
    return-void

    .line 262
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "outpufile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iput-object p1, p0, Lcom/lge/camera/EffectsBase;->mOutputFile:Ljava/lang/String;

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/EffectsBase;->mFd:Ljava/io/FileDescriptor;

    goto :goto_0
.end method

.method public setPIPSubWindowPosition(IIII)V
    .locals 1
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"

    .prologue
    .line 1310
    iput p1, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_X:I

    .line 1311
    iput p2, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Y:I

    .line 1312
    sub-int v0, p3, p1

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Width:I

    .line 1313
    sub-int v0, p4, p2

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Height:I

    .line 1314
    return-void
.end method

.method public setPIPSubWindowThick(I)V
    .locals 0
    .parameter "thick"

    .prologue
    .line 1316
    iput p1, p0, Lcom/lge/camera/EffectsBase;->mPIP_SubWindow_Thick:I

    .line 1317
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/SurfaceHolder;II)V
    .locals 3
    .parameter "previewSurfaceHolder"
    .parameter "previewWidth"
    .parameter "previewHeight"

    .prologue
    .line 321
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 322
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewDisplay cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :goto_0
    return-void

    .line 325
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setPreviewDisplay ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iput-object p1, p0, Lcom/lge/camera/EffectsBase;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 328
    iput p2, p0, Lcom/lge/camera/EffectsBase;->mPreviewWidth:I

    .line 329
    iput p3, p0, Lcom/lge/camera/EffectsBase;->mPreviewHeight:I

    .line 331
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 333
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->startPreview()V

    goto :goto_0

    .line 337
    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/camera/EffectsBase;->initializeEffect(Z)V

    goto :goto_0

    .line 331
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 249
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 250
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProfile cannot be called while "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProfile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iput-object p1, p0, Lcom/lge/camera/EffectsBase;->mProfile:Landroid/media/CamcorderProfile;

    goto :goto_0
.end method

.method protected setRecordingOrientation()V
    .locals 11

    .prologue
    const/16 v10, 0xb4

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    .line 393
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v6, :cond_1

    .line 402
    new-instance v0, Landroid/filterfw/geometry/Point;

    invoke-direct {v0, v8, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 403
    .local v0, bl:Landroid/filterfw/geometry/Point;
    new-instance v1, Landroid/filterfw/geometry/Point;

    invoke-direct {v1, v9, v8}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 404
    .local v1, br:Landroid/filterfw/geometry/Point;
    new-instance v4, Landroid/filterfw/geometry/Point;

    invoke-direct {v4, v8, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 405
    .local v4, tl:Landroid/filterfw/geometry/Point;
    new-instance v5, Landroid/filterfw/geometry/Point;

    invoke-direct {v5, v9, v9}, Landroid/filterfw/geometry/Point;-><init>(FF)V

    .line 407
    .local v5, tr:Landroid/filterfw/geometry/Point;
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mCameraFacing:I

    if-eqz v6, :cond_0

    iget v6, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_3

    .line 411
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 412
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v0, v1, v4, v5}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .line 437
    .local v3, recordingRegion:Landroid/filterfw/geometry/Quad;
    :goto_0
    iget-object v6, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v6}, Landroid/filterfw/core/GraphRunner;->getGraph()Landroid/filterfw/core/FilterGraph;

    move-result-object v6

    const-string v7, "recorder"

    invoke-virtual {v6, v7}, Landroid/filterfw/core/FilterGraph;->getFilter(Ljava/lang/String;)Landroid/filterfw/core/Filter;

    move-result-object v2

    .line 438
    .local v2, recorder:Landroid/filterfw/core/Filter;
    if-eqz v2, :cond_1

    .line 439
    const-string v6, "inputRegion"

    invoke-virtual {v2, v6, v3}, Landroid/filterfw/core/Filter;->setInputValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 442
    .end local v0           #bl:Landroid/filterfw/geometry/Point;
    .end local v1           #br:Landroid/filterfw/geometry/Point;
    .end local v2           #recorder:Landroid/filterfw/core/Filter;
    .end local v3           #recordingRegion:Landroid/filterfw/geometry/Quad;
    .end local v4           #tl:Landroid/filterfw/geometry/Point;
    .end local v5           #tr:Landroid/filterfw/geometry/Point;
    :cond_1
    return-void

    .line 414
    .restart local v0       #bl:Landroid/filterfw/geometry/Point;
    .restart local v1       #br:Landroid/filterfw/geometry/Point;
    .restart local v4       #tl:Landroid/filterfw/geometry/Point;
    .restart local v5       #tr:Landroid/filterfw/geometry/Point;
    :cond_2
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v1, v5, v0, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .restart local v3       #recordingRegion:Landroid/filterfw/geometry/Quad;
    goto :goto_0

    .line 419
    .end local v3           #recordingRegion:Landroid/filterfw/geometry/Quad;
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->isConfigureLandscape()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 420
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mOrientationHint:I

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/lge/camera/EffectsBase;->mOrientationHint:I

    if-ne v6, v10, :cond_5

    .line 422
    :cond_4
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v1, v0, v5, v4}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .restart local v3       #recordingRegion:Landroid/filterfw/geometry/Quad;
    goto :goto_0

    .line 425
    .end local v3           #recordingRegion:Landroid/filterfw/geometry/Quad;
    :cond_5
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v4, v5, v0, v1}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .restart local v3       #recordingRegion:Landroid/filterfw/geometry/Quad;
    goto :goto_0

    .line 428
    .end local v3           #recordingRegion:Landroid/filterfw/geometry/Quad;
    :cond_6
    iget v6, p0, Lcom/lge/camera/EffectsBase;->mOrientationHint:I

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/lge/camera/EffectsBase;->mOrientationHint:I

    if-ne v6, v10, :cond_8

    .line 430
    :cond_7
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v5, v1, v4, v0}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .restart local v3       #recordingRegion:Landroid/filterfw/geometry/Quad;
    goto :goto_0

    .line 433
    .end local v3           #recordingRegion:Landroid/filterfw/geometry/Quad;
    :cond_8
    new-instance v3, Landroid/filterfw/geometry/Quad;

    invoke-direct {v3, v0, v4, v1, v5}, Landroid/filterfw/geometry/Quad;-><init>(Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;Landroid/filterfw/geometry/Point;)V

    .restart local v3       #recordingRegion:Landroid/filterfw/geometry/Quad;
    goto :goto_0
.end method

.method public setTextureSize(Ljava/lang/String;)V
    .locals 4
    .parameter "size"

    .prologue
    .line 343
    invoke-static {p1}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v0

    .line 344
    .local v0, textureSize:[I
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/lge/camera/EffectsBase;->mTextureWidth:I

    .line 345
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/lge/camera/EffectsBase;->mTextureHeight:I

    .line 346
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "texture size is explictly set as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/EffectsBase;->mTextureWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/EffectsBase;->mTextureHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public setVideoEncodingBitRate(I)V
    .locals 0
    .parameter "videoEncodingBitRate"

    .prologue
    .line 471
    iput p1, p0, Lcom/lge/camera/EffectsBase;->mVideoBitrate:I

    .line 472
    return-void
.end method

.method public declared-synchronized startPreview()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 735
    monitor-enter p0

    :try_start_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Starting preview ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 737
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do NOTHING because EffectsBase.startPreview() is called while EffectsBase.startPreview() is on-going, mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 739
    :cond_2
    :try_start_1
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 740
    :cond_3
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do NOTHING because startPreview cannot not be called in STATE_RECORD and STATE_RELEASED, mState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 735
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 744
    :cond_4
    :try_start_2
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mEffect:I

    if-nez v0, :cond_5

    .line 746
    const-string v0, "CameraApp"

    const-string v1, "No effect selected!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 750
    :cond_5
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mEffectParameter:Ljava/lang/Object;

    if-nez v0, :cond_6

    .line 751
    const-string v0, "CameraApp"

    const-string v1, "No effect selected!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 755
    :cond_6
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mProfile:Landroid/media/CamcorderProfile;

    if-nez v0, :cond_7

    .line 756
    const-string v0, "CameraApp"

    const-string v1, "No effect selected!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 760
    :cond_7
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mPreviewSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_8

    .line 761
    const-string v0, "CameraApp"

    const-string v1, "Passed a null surface holder; waiting for valid one"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    goto :goto_0

    .line 765
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_9

    .line 768
    iget v0, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/lge/camera/EffectsBase;->sendMessage(II)V

    .line 769
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No camera to record from!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 772
    :cond_9
    const-string v0, "CameraApp"

    const-string v1, "Initializing filter graph"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    invoke-direct {p0}, Lcom/lge/camera/EffectsBase;->initializeFilterFramework()V

    .line 776
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/lge/camera/EffectsBase;->initializeEffect(Z)V

    .line 778
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/EffectsBase;->mState:I

    .line 779
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v0, :cond_1

    .line 780
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRunner.run() is called, Starting filter graph, mState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v0}, Landroid/filterfw/core/GraphRunner;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized stopPreview(I)V
    .locals 5
    .parameter "calledFrom"

    .prologue
    const/4 v4, 0x6

    .line 1067
    monitor-enter p0

    :try_start_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EffectsBase stopPreview-start ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), mState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lge/camera/EffectsBase;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    iget-object v1, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 1070
    const-string v1, "CameraApp"

    const-string v2, "EffectsBase mCameraDevice is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    :goto_0
    monitor-exit p0

    return-void

    .line 1074
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/lge/camera/EffectsBase;->mState:I

    sparse-switch v1, :sswitch_data_0

    .line 1086
    iget v1, p0, Lcom/lge/camera/EffectsBase;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 1087
    invoke-virtual {p0}, Lcom/lge/camera/EffectsBase;->stopRecording()V

    .line 1090
    :cond_1
    iget v1, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    if-ne v1, v4, :cond_3

    .line 1091
    :cond_2
    invoke-static {}, Lcom/lge/camera/platform/PlatformDevice;->DualRec_stopPIPPreview()V

    .line 1094
    :cond_3
    const/4 v1, 0x0

    iput v1, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    .line 1095
    iput p1, p0, Lcom/lge/camera/EffectsBase;->mCalledFrom:I

    .line 1096
    const-string v1, "CameraApp"

    const-string v2, "### EffectsBase mCameraDevice.stopPreview()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object v1, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1099
    :try_start_2
    iget-object v1, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1105
    const/4 v1, 0x0

    :try_start_3
    iput v1, p0, Lcom/lge/camera/EffectsBase;->mState:I

    .line 1106
    iget-object v1, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    iput-object v1, p0, Lcom/lge/camera/EffectsBase;->mOldRunner:Landroid/filterfw/core/GraphRunner;

    .line 1107
    iget-object v1, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    if-eqz v1, :cond_4

    .line 1108
    const-string v1, "CameraApp"

    const-string v2, "### mRunner.stop() is called in EffectsBase.stopPreview()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    iget-object v1, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    invoke-virtual {v1}, Landroid/filterfw/core/GraphRunner;->stop()V

    .line 1110
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/lge/camera/EffectsBase;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1113
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/EffectsBase;->mRunner:Landroid/filterfw/core/GraphRunner;

    .line 1115
    const-string v1, "CameraApp"

    const-string v2, "EffectsBase stopPreview-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1067
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1076
    :sswitch_0
    :try_start_4
    const-string v1, "CameraApp"

    const-string v2, "EffectsBase StopPreview called when preview not active!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1079
    :sswitch_1
    const-string v1, "CameraApp"

    const-string v2, "EffectsBase stopPreview called on released EffectsBase!"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1100
    :catch_0
    move-exception v0

    .line 1101
    .local v0, e:Ljava/io/IOException;
    iget v1, p0, Lcom/lge/camera/EffectsBase;->mCurrentEffect:I

    const/4 v2, 0x6

    invoke-virtual {p0, v1, v2}, Lcom/lge/camera/EffectsBase;->sendMessage(II)V

    .line 1102
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to connect camera to effect input"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1074
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public declared-synchronized stopRecording()V
    .locals 0

    .prologue
    .line 1063
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method tryEnable3ALocks(Z)Z
    .locals 4
    .parameter "toggle"

    .prologue
    .line 1138
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1140
    .local v1, params:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1142
    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 1143
    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 1144
    iget-object v2, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    const/4 v2, 0x1

    .line 1150
    .end local v1           #params:Landroid/hardware/Camera$Parameters;
    :goto_0
    return v2

    .line 1147
    :catch_0
    move-exception v0

    .line 1148
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "RuntimeException-3A lock: "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1150
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method tryEnableVideoStabilization(Z)Z
    .locals 5
    .parameter "toggle"

    .prologue
    .line 1121
    iget-object v2, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1123
    .local v0, params:Landroid/hardware/Camera$Parameters;
    const-string v2, "video-stabilization-supported"

    invoke-virtual {v0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1124
    .local v1, vstabSupported:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1125
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting video stabilization to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    const-string v3, "video-stabilization"

    if-eqz p1, :cond_0

    const-string v2, "true"

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget-object v2, p0, Lcom/lge/camera/EffectsBase;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1128
    const/4 v2, 0x1

    .line 1131
    :goto_1
    return v2

    .line 1126
    :cond_0
    const-string v2, "false"

    goto :goto_0

    .line 1130
    :cond_1
    const-string v2, "CameraApp"

    const-string v3, "Video stabilization not supported"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    const/4 v2, 0x0

    goto :goto_1
.end method
