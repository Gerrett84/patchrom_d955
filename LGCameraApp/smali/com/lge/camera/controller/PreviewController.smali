.class public abstract Lcom/lge/camera/controller/PreviewController;
.super Lcom/lge/camera/controller/Controller;
.source "PreviewController.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;
.implements Lcom/lge/camera/controller/PIPController$PIPControllerFunction;
.implements Lcom/lge/camera/platform/PlatformDevice$PlatformDeviceInterface;
.implements Lcom/lge/camera/components/CameraPreview$OnDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/controller/PreviewController$EffectCameraListener;,
        Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;,
        Lcom/lge/camera/controller/PreviewController$CameraErrorCallback;
    }
.end annotation


# static fields
.field protected static final HEIGHT_INDEX:I = 0x1

.field protected static final WIDTH_INDEX:I


# instance fields
.field protected bRendered:Z

.field private deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

.field private final divider:I

.field private isBeautyshotProgress:Z

.field protected isPlayRingVideoSizeSet:Z

.field protected isReadyEngineProcessor:Z

.field private mBeginStartPreview:Z

.field protected mCameraDevice:Landroid/hardware/Camera;

.field protected mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

.field protected mCameraGLPreviewExtra:Landroid/view/SurfaceView;

.field protected mCameraMode:I

.field protected mCameraPreview:Lcom/lge/camera/components/CameraPreview;

.field protected mCameraReleaseOnGoing:Z

.field private mChangeMode:Z

.field private mChangedManualFocusToDefault:Z

.field private mCheckCountOf_CAMERA_ERROR_SERVER_DIED:I

.field protected mCurrentEffect:Ljava/lang/String;

.field protected mEffectCameraListener:Lcom/lge/camera/controller/PreviewController$EffectCameraListener;

.field protected mEffectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mEffectParameter:Ljava/lang/Object;

.field protected mEffectRecorderListener:Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;

.field protected mEffectType:I

.field public mEffectsCamera:Lcom/lge/camera/EffectsCamera;

.field public mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

.field public mEnableInputThread:Ljava/lang/Thread;

.field protected mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

.field private mErrorCallback:Lcom/lge/camera/controller/PreviewController$CameraErrorCallback;

.field private mExitBtn:Lcom/lge/camera/components/ImageButtonEx;

.field private mFaceDetectionStarted:Z

.field private mIsSensorSupportBackdropper:Z

.field protected mIsStartPreviewEffectOnGoing:Z

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mLockScreenPreventPreview:Z

.field public mOneShotPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field protected mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

.field protected mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

.field private mPlatformDevice:Lcom/lge/camera/platform/PlatformDevice;

.field public mPreviewCallbackRunnable:Ljava/lang/Runnable;

.field private mPreviewing:Z

.field protected mProfile:Landroid/media/CamcorderProfile;

.field protected mProfileType:I

.field private mQuickShutterButtonClickListener:Landroid/view/View$OnTouchListener;

.field private mQuickShutterButtonLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mQuickWindowExitButtonTouchListener:Landroid/view/View$OnTouchListener;

.field private mRotateExitBtn:Lcom/lge/camera/components/RotateImageButton;

.field private mRotateShutterBtn:Lcom/lge/camera/components/RotateImageButton;

.field private mSetPreviewDisplayCheck:Z

.field private mSetPreviewDisplayLatch:Ljava/util/concurrent/CountDownLatch;

.field private mSetPreviewDisplayLock:Ljava/lang/Object;

.field private mShutterBtn:Lcom/lge/camera/components/ShutterButton;

.field private mStartPreviewFail:Z

.field protected mStartPreviewOnGoing:Z

.field private mStartPreviewRunnable:Ljava/lang/Runnable;

.field private mStartPreviewThread:Ljava/lang/Thread;

.field protected mSurfaceHeight:I

.field protected mSurfaceHolder:Landroid/view/SurfaceHolder;

.field protected mSurfaceWidth:I

.field private mThreadStartRunnable:Ljava/lang/Runnable;

.field private mUseOnResume:Z

.field protected previousEffectParameter:Ljava/lang/Object;

.field protected previousEffectType:I

.field protected previousResolution:Ljava/lang/String;

.field private final ruleEnable:I

.field private final shiftQuickWindow:I


# direct methods
.method public constructor <init>(Lcom/lge/camera/ControllerFunction;)V
    .locals 4
    .parameter "function"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 135
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/Controller;-><init>(Lcom/lge/camera/ControllerFunction;)V

    .line 74
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 75
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraReleaseOnGoing:Z

    .line 77
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 78
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    .line 80
    iput v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraMode:I

    .line 81
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    .line 82
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->mBeginStartPreview:Z

    .line 83
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z

    .line 85
    new-instance v0, Lcom/lge/olaworks/library/EngineProcessor;

    invoke-direct {v0}, Lcom/lge/olaworks/library/EngineProcessor;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 86
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->isReadyEngineProcessor:Z

    .line 87
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->isPlayRingVideoSizeSet:Z

    .line 89
    new-instance v0, Lcom/lge/camera/controller/PreviewController$CameraErrorCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewController$CameraErrorCallback;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mErrorCallback:Lcom/lge/camera/controller/PreviewController$CameraErrorCallback;

    .line 91
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 92
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    .line 93
    iput v1, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    .line 94
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    .line 96
    const/4 v0, 0x4

    iput v0, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    .line 97
    iput v1, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceWidth:I

    .line 98
    iput v1, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHeight:I

    .line 99
    new-instance v0, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;

    invoke-direct {v0, p0, v2}, Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;-><init>(Lcom/lge/camera/controller/PreviewController;Lcom/lge/camera/controller/PreviewController$1;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectRecorderListener:Lcom/lge/camera/controller/PreviewController$EffectRecorderListener;

    .line 100
    new-instance v0, Lcom/lge/camera/controller/PreviewController$EffectCameraListener;

    invoke-direct {v0, p0, v2}, Lcom/lge/camera/controller/PreviewController$EffectCameraListener;-><init>(Lcom/lge/camera/controller/PreviewController;Lcom/lge/camera/controller/PreviewController$1;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectCameraListener:Lcom/lge/camera/controller/PreviewController$EffectCameraListener;

    .line 101
    iput v1, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    .line 102
    const-string v0, "off"

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectParameter:Ljava/lang/Object;

    .line 103
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    .line 105
    const/4 v0, -0x1

    iput v0, p0, Lcom/lge/camera/controller/PreviewController;->shiftQuickWindow:I

    .line 106
    iput v3, p0, Lcom/lge/camera/controller/PreviewController;->ruleEnable:I

    .line 107
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/controller/PreviewController;->divider:I

    .line 108
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mExitBtn:Lcom/lge/camera/components/ImageButtonEx;

    .line 109
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mRotateExitBtn:Lcom/lge/camera/components/RotateImageButton;

    .line 110
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mShutterBtn:Lcom/lge/camera/components/ShutterButton;

    .line 111
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mRotateShutterBtn:Lcom/lge/camera/components/RotateImageButton;

    .line 112
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mChangeMode:Z

    .line 113
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mChangedManualFocusToDefault:Z

    .line 116
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->mIsSensorSupportBackdropper:Z

    .line 118
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    .line 119
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    .line 121
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mPlatformDevice:Lcom/lge/camera/platform/PlatformDevice;

    .line 122
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 124
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mIsStartPreviewEffectOnGoing:Z

    .line 131
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    .line 132
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    .line 206
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mLockScreenPreventPreview:Z

    .line 604
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayLatch:Ljava/util/concurrent/CountDownLatch;

    .line 767
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayLock:Ljava/lang/Object;

    .line 768
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayCheck:Z

    .line 875
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1037
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    .line 1038
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mUseOnResume:Z

    .line 1039
    new-instance v0, Lcom/lge/camera/controller/PreviewController$6;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewController$6;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewRunnable:Ljava/lang/Runnable;

    .line 1077
    new-instance v0, Lcom/lge/camera/controller/PreviewController$7;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewController$7;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mThreadStartRunnable:Ljava/lang/Runnable;

    .line 1465
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->isBeautyshotProgress:Z

    .line 1661
    new-instance v0, Lcom/lge/camera/controller/PreviewController$9;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewController$9;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mQuickWindowExitButtonTouchListener:Landroid/view/View$OnTouchListener;

    .line 1697
    new-instance v0, Lcom/lge/camera/controller/PreviewController$10;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewController$10;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mQuickShutterButtonClickListener:Landroid/view/View$OnTouchListener;

    .line 1729
    new-instance v0, Lcom/lge/camera/controller/PreviewController$11;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewController$11;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mQuickShutterButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 2266
    new-instance v0, Lcom/lge/camera/controller/PreviewController$18;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewController$18;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewCallbackRunnable:Ljava/lang/Runnable;

    .line 2273
    new-instance v0, Lcom/lge/camera/controller/PreviewController$19;

    invoke-direct {v0, p0}, Lcom/lge/camera/controller/PreviewController$19;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mOneShotPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 2308
    iput v1, p0, Lcom/lge/camera/controller/PreviewController;->mCheckCountOf_CAMERA_ERROR_SERVER_DIED:I

    .line 2352
    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mFaceDetectionStarted:Z

    .line 2570
    const-string v0, "off"

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCurrentEffect:Ljava/lang/String;

    .line 136
    return-void
.end method

.method static synthetic access$202(Lcom/lge/camera/controller/PreviewController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z

    return p1
.end method

.method static synthetic access$300(Lcom/lge/camera/controller/PreviewController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mUseOnResume:Z

    return v0
.end method

.method static synthetic access$400(Lcom/lge/camera/controller/PreviewController;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/camera/util/CameraHardwareException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewController;->ensureCameraDevice()V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/camera/controller/PreviewController;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/camera/controller/PreviewController;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$602(Lcom/lge/camera/controller/PreviewController;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$700(Lcom/lge/camera/controller/PreviewController;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/camera/controller/PreviewController;)Lcom/lge/camera/components/RotateImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mRotateExitBtn:Lcom/lge/camera/components/RotateImageButton;

    return-object v0
.end method

.method static synthetic access$802(Lcom/lge/camera/controller/PreviewController;Lcom/lge/camera/components/RotateImageButton;)Lcom/lge/camera/components/RotateImageButton;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController;->mRotateExitBtn:Lcom/lge/camera/components/RotateImageButton;

    return-object p1
.end method

.method static synthetic access$900(Lcom/lge/camera/controller/PreviewController;)Lcom/lge/camera/components/ShutterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mShutterBtn:Lcom/lge/camera/components/ShutterButton;

    return-object v0
.end method

.method private ensureCameraDevice()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/camera/util/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 877
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ensureCameraDevice() deviceOpenLatch:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " device:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v7, :cond_5

    .line 879
    iget-boolean v7, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z

    if-eqz v7, :cond_1

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    const/4 v5, 0x1

    .local v5, trial:I
    :goto_1
    const/4 v7, 0x4

    if-ge v5, v7, :cond_5

    .line 884
    :try_start_0
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v7, :cond_2

    .line 885
    const-string v7, "TAG"

    const-string v8, " Camera device is opening in another thread, wait for done %d..."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    const-string v7, "TAG"

    const-string v8, " currently camera device:%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    :cond_2
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v7, :cond_3

    .line 889
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v8, 0x3e8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v8, v9, v10}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v4

    .line 890
    .local v4, ret:Z
    if-nez v4, :cond_4

    .line 891
    const-string v7, "TAG"

    const-string v8, " Device open latch timeout! startPreviewFail:%b"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-boolean v11, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    .end local v4           #ret:Z
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 893
    .restart local v4       #ret:Z
    :cond_4
    const-string v7, "TAG"

    const-string v8, " Opened. Camera device:%s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    .end local v4           #ret:Z
    .end local v5           #trial:I
    :cond_5
    :goto_2
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v7, :cond_0

    .line 903
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v7, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v7, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    .line 905
    :try_start_1
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/util/CameraHolder;->getUsers()I

    move-result v7

    if-nez v7, :cond_7

    .line 906
    const/4 v0, 0x0

    .line 907
    .local v0, device_cam_id:I
    const/4 v2, 0x0

    .line 908
    .local v2, old_device_cam_id:I
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v6

    .line 910
    .local v6, ui_cam_id:I
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "call CameraHolder.open("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/util/CameraHolder;->getRealCameraId()I

    move-result v2

    .line 912
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/lge/camera/util/CameraHolder;->open(I)Landroid/hardware/Camera;

    move-result-object v7

    iput-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    .line 913
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/util/CameraHolder;->getRealCameraId()I

    move-result v0

    .line 914
    if-eq v2, v6, :cond_6

    if-ne v2, v0, :cond_6

    .line 916
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v0}, Lcom/lge/camera/ControllerFunction;->setCameraId(I)V

    .line 917
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v0}, Lcom/lge/camera/ControllerFunction;->setCameraMode(I)V

    .line 918
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "Main_CameraAppConfig"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 919
    .local v3, pref:Landroid/content/SharedPreferences;
    invoke-static {v3, v0}, Lcom/lge/camera/setting/Setting;->writePreferredCameraId(Landroid/content/SharedPreferences;I)V

    .line 920
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reset ui menu for device number:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.SetCameraIdBeforeStartInit"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 923
    .end local v3           #pref:Landroid/content/SharedPreferences;
    :cond_6
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "open routine done readlCamId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    .end local v0           #device_cam_id:I
    .end local v2           #old_device_cam_id:I
    .end local v6           #ui_cam_id:I
    :goto_3
    const-string v7, "CameraApp"

    const-string v8, "Camera device opening done."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 929
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 930
    iput-object v14, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    .line 931
    const-string v7, "CameraApp"

    const-string v8, "latch countDown called"

    new-array v9, v12, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 898
    .restart local v5       #trial:I
    :catch_0
    move-exception v1

    .line 899
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_2

    .line 925
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v5           #trial:I
    :cond_7
    :try_start_2
    const-string v7, "CameraApp"

    const-string v8, "Camera device user != 0 SOMETHING WRONG!!"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 929
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 930
    iput-object v14, p0, Lcom/lge/camera/controller/PreviewController;->deviceOpenLatch:Ljava/util/concurrent/CountDownLatch;

    .line 931
    const-string v8, "CameraApp"

    const-string v9, "latch countDown called"

    new-array v10, v12, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v7
.end method

.method public static setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V
    .locals 7
    .parameter "activity"
    .parameter "cameraId"
    .parameter "camera"

    .prologue
    .line 1577
    :try_start_0
    new-instance v2, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v2}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 1578
    .local v2, info:Landroid/hardware/Camera$CameraInfo;
    invoke-static {p1, v2}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 1579
    invoke-static {p0}, Lcom/lge/camera/util/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v0

    .line 1581
    .local v0, degrees:I
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 1582
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v4, v0

    rem-int/lit16 v3, v4, 0x168

    .line 1583
    .local v3, result:I
    rsub-int v4, v3, 0x168

    rem-int/lit16 v3, v4, 0x168

    .line 1587
    :goto_0
    const-string v4, "CameraApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "degrees = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", info.orientation = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", result = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    invoke-virtual {p2, v3}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 1592
    .end local v0           #degrees:I
    .end local v2           #info:Landroid/hardware/Camera$CameraInfo;
    .end local v3           #result:I
    :goto_1
    return-void

    .line 1585
    .restart local v0       #degrees:I
    .restart local v2       #info:Landroid/hardware/Camera$CameraInfo;
    :cond_0
    iget v4, v2, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v4, v0

    add-int/lit16 v4, v4, 0x168

    rem-int/lit16 v3, v4, 0x168
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3       #result:I
    goto :goto_0

    .line 1589
    .end local v0           #degrees:I
    .end local v2           #info:Landroid/hardware/Camera$CameraInfo;
    .end local v3           #result:I
    :catch_0
    move-exception v1

    .line 1590
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "CameraApp"

    const-string v5, "setCameraDisplayOrientation exception : "

    invoke-static {v4, v5, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private setOtherLayoutParam(IIILandroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 8
    .parameter "width"
    .parameter "height"
    .parameter "leftMargin"
    .parameter "previewParam"
    .parameter "surfaceParam"

    .prologue
    const v7, 0x7f090143

    .line 2006
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 2007
    move v2, p3

    .line 2008
    .local v2, recIconLeftMargin:I
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2009
    iget v3, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lt v3, p1, :cond_0

    .line 2010
    iget v3, p4, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 2017
    :cond_0
    :goto_0
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUWXGAmodel()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->getProjectCode()I

    move-result v3

    const/16 v4, 0x15

    if-ne v3, v4, :cond_7

    .line 2023
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    sget v4, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_WIDTH:I

    sget v5, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->setRecIndicatorLayout(III)V

    .line 2030
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAudiozoom()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2031
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, p2, p3}, Lcom/lge/camera/ControllerFunction;->setAudioZoomGuideViewLayout(III)V

    .line 2032
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2033
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    sget v4, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_WIDTH:I

    sget v5, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    invoke-interface {v3, v4, v5, p3}, Lcom/lge/camera/ControllerFunction;->setAudioZoomGuideViewLayout(III)V

    .line 2044
    .end local v2           #recIconLeftMargin:I
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/Util;->SizeString2WidthHeight(Ljava/lang/String;)[I

    move-result-object v1

    .line 2046
    .local v1, previewSizeOnScreen:[I
    const-string v3, "multiwindowaf"

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_focus"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2047
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v4, Lcom/lge/camera/controller/PreviewController$12;

    invoke-direct {v4, p0, v1}, Lcom/lge/camera/controller/PreviewController$12;-><init>(Lcom/lge/camera/controller/PreviewController;[I)V

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2056
    :cond_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    .line 2057
    .local v0, pip:Lcom/lge/camera/controller/PIPController;
    if-eqz v0, :cond_4

    .line 2058
    invoke-virtual {v0, p1, p2, p3}, Lcom/lge/camera/controller/PIPController;->setSmartZoomLayoutSize(III)V

    .line 2061
    :cond_4
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, p2, p3}, Lcom/lge/camera/ControllerFunction;->setFocusAreaWindow(III)V

    .line 2063
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2064
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2067
    :cond_5
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p3}, Lcom/lge/camera/ControllerFunction;->setIndicatorLayout(I)V

    .line 2068
    return-void

    .line 2013
    .end local v0           #pip:Lcom/lge/camera/controller/PIPController;
    .end local v1           #previewSizeOnScreen:[I
    .restart local v2       #recIconLeftMargin:I
    :cond_6
    iget v3, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lt v3, p1, :cond_0

    .line 2014
    iget v3, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    goto/16 :goto_0

    .line 2027
    :cond_7
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, p2, v2}, Lcom/lge/camera/ControllerFunction;->setRecIndicatorLayout(III)V

    goto :goto_1

    .line 2038
    :cond_8
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3, p1, p2, p3}, Lcom/lge/camera/ControllerFunction;->setAudioZoomGuideViewLayout(III)V

    goto :goto_2
.end method

.method private setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 7
    .parameter "holder"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 770
    const-string v1, "CameraApp"

    const-string v2, "##### mCameraDevice.setPreviewDisplay device:%s, holder:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    aput-object v4, v3, v5

    aput-object p1, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayCheck:Z

    if-eqz v1, :cond_0

    .line 772
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return setPreviewDisplay : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayCheck:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    :goto_0
    return-void

    .line 775
    :cond_0
    if-eqz p1, :cond_1

    .line 776
    iput-boolean v6, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayCheck:Z

    .line 778
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayLock:Ljava/lang/Object;

    monitor-enter v2

    .line 780
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 793
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->updateNavigationBarShape()V

    .line 795
    const-string v1, "CameraApp"

    const-string v2, "##### mCameraDevice.setPreviewDisplay end"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 781
    :catch_0
    move-exception v0

    .line 782
    .local v0, ex:Ljava/lang/Throwable;
    :try_start_2
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/PreviewController$3;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/PreviewController$3;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v1, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 788
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 791
    .end local v0           #ex:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public CamDeviceOpen()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/camera/util/CameraHardwareException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1497
    const/4 v1, 0x0

    .line 1499
    .local v1, ret:Z
    :try_start_0
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/util/CameraHolder;->getUsers()I

    move-result v2

    if-nez v2, :cond_0

    .line 1500
    const-string v2, "CameraApp"

    const-string v3, "CamDeviceOpen call CameraHolder.open(%d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v6}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/util/CameraHolder;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    .line 1502
    const/4 v1, 0x1

    .line 1503
    const-string v2, "CameraApp"

    const-string v3, "CamDeviceOpen open routine done"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    :goto_0
    const-string v2, "CameraApp"

    const-string v3, "CamDeviceOpen Camera device opening done."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    :goto_1
    return v1

    .line 1505
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "CamDeviceOpen Camera device user != 0 SOMETHING WRONG!!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1508
    :catch_0
    move-exception v0

    .line 1509
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1510
    const-string v2, "CameraApp"

    const-string v3, "CamDeviceOpen latch countDown called"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public beRendered()Z
    .locals 1

    .prologue
    .line 1620
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    return v0
.end method

.method public cameraErrorCallbackForServerDied()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2310
    const-string v1, "CameraApp"

    const-string v2, "media server died"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2312
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_3

    .line 2313
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->checkFsWritable()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/lge/camera/controller/PreviewController;->mCheckCountOf_CAMERA_ERROR_SERVER_DIED:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    .line 2315
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "Try restart preview"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2317
    iget v1, p0, Lcom/lge/camera/controller/PreviewController;->mCheckCountOf_CAMERA_ERROR_SERVER_DIED:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/camera/controller/PreviewController;->mCheckCountOf_CAMERA_ERROR_SERVER_DIED:I

    .line 2319
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 2320
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->closeCamera()V

    .line 2322
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->hide()V

    .line 2323
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->show()V

    .line 2326
    :try_start_0
    const-string v1, "CameraApp"

    const-string v2, "wait 5 second for restart MediaServer"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    const-wide/16 v1, 0x1388

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2331
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/lge/camera/controller/PreviewController;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 2342
    :cond_1
    :goto_1
    return-void

    .line 2328
    :catch_0
    move-exception v0

    .line 2329
    .local v0, e1:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 2333
    .end local v0           #e1:Ljava/lang/InterruptedException;
    :cond_2
    const-string v1, "CameraApp"

    const-string v2, "Storage is not available. Or media server never wake up. finish app."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2334
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getShowCameraErrorPopup()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2335
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setShowCameraErrorPopup(Z)V

    .line 2336
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->showCameraStoppedAndFinish()V

    goto :goto_1

    .line 2340
    :cond_3
    const-string v1, "CameraApp"

    const-string v2, "mediator or Controller is null"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public cameraErrorCallbackForUnKnown()V
    .locals 3

    .prologue
    .line 2345
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera Driver Error, bShowCameraErrorPopup = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getShowCameraErrorPopup()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2346
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getShowCameraErrorPopup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2347
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setShowCameraErrorPopup(Z)V

    .line 2348
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showCameraStoppedAndFinish()V

    .line 2350
    :cond_0
    return-void
.end method

.method public changePreviewMode(II)V
    .locals 13
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f09013d

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1854
    .local v9, previewLayout:Landroid/view/View;
    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1855
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->showQuickWindowCamera(Z)V

    .line 1856
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/PreviewController;->changeQuickPreviewMode(II)V

    .line 1857
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lge/camera/util/Common;->setQuickWindowCameraExecuted(Z)V

    .line 2000
    :goto_0
    return-void

    .line 1860
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->showQuickWindowCamera(Z)V

    .line 1861
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->enableQuickWindowButton(Z)V

    .line 1862
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lge/camera/util/Common;->setQuickWindowCameraExecuted(Z)V

    .line 1865
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changePreviewMode previewLayout ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1868
    .local v4, previewParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, 0x0

    .line 1870
    .local v5, surfaceParam:Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v0, :cond_2

    .line 1871
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v0}, Lcom/lge/camera/components/OpenGLSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .end local v5           #surfaceParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1878
    .restart local v5       #surfaceParam:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->getPixelFromDimens(I)I

    move-result v10

    .line 1879
    .local v10, previewWidth:I
    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->getPixelFromDimens(I)I

    move-result v8

    .line 1880
    .local v8, previewHeight:I
    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->getPixelFromDimens(I)I

    move-result v7

    .line 1881
    .local v7, lcdWidth:I
    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->getPixelFromDimens(I)I

    move-result v6

    .line 1882
    .local v6, lcdHeight:I
    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->getPixelFromDimens(I)I

    move-result v3

    .line 1884
    .local v3, leftMargin:I
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1885
    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1886
    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1891
    :goto_2
    const/4 v0, -0x1

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1892
    const/4 v0, -0x1

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1893
    const/16 v0, 0xd

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1895
    if-ge v10, p1, :cond_8

    .line 1896
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setMainBarAlpha(I)V

    .line 1898
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1899
    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1900
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1905
    :goto_3
    const/4 v0, 0x0

    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1906
    const/4 v0, 0x0

    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1907
    const/4 v3, 0x0

    .line 1909
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1910
    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lt v0, p1, :cond_5

    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lt v0, p2, :cond_5

    .line 1911
    const-string v0, "CameraApp"

    const-string v1, "surface not scaled %dx%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    const/4 v11, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    iput p1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1913
    iput p2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    :goto_4
    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 1985
    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/controller/PreviewController;->setOtherLayoutParam(IIILandroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 1987
    invoke-virtual {v9, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1988
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v0, :cond_10

    .line 1989
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v0, v5}, Lcom/lge/camera/components/OpenGLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1873
    .end local v3           #leftMargin:I
    .end local v6           #lcdHeight:I
    .end local v7           #lcdWidth:I
    .end local v8           #previewHeight:I
    .end local v10           #previewWidth:I
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraPreview;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .end local v5           #surfaceParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .restart local v5       #surfaceParam:Landroid/widget/RelativeLayout$LayoutParams;
    goto/16 :goto_1

    .line 1888
    .restart local v3       #leftMargin:I
    .restart local v6       #lcdHeight:I
    .restart local v7       #lcdWidth:I
    .restart local v8       #previewHeight:I
    .restart local v10       #previewWidth:I
    :cond_3
    iput v8, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1889
    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 1902
    :cond_4
    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1903
    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    .line 1915
    :cond_5
    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1916
    mul-int v0, v7, p2

    div-int/2addr v0, p1

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_4

    .line 1919
    :cond_6
    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lt v0, p2, :cond_7

    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lt v0, p1, :cond_7

    .line 1920
    const-string v0, "CameraApp"

    const-string v1, "surface not scaled %dx%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    const/4 v11, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1921
    iput p1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1922
    iput p2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_4

    .line 1924
    :cond_7
    iput v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1925
    mul-int v0, v7, p2

    div-int/2addr v0, p1

    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_4

    .line 1929
    :cond_8
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/16 v1, 0xff

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setMainBarAlpha(I)V

    .line 1931
    sub-int v0, v10, v3

    if-ge v0, p1, :cond_d

    .line 1932
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1933
    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1934
    iput p1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1935
    iput p2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1942
    :goto_5
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isXGAmodel()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1943
    :cond_9
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1944
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto/16 :goto_4

    .line 1937
    :cond_a
    iput v10, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1938
    iput p1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1939
    iput p2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_5

    .line 1946
    :cond_b
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_4

    .line 1950
    :cond_c
    const/4 v0, 0x0

    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1951
    const/4 v0, 0x0

    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1952
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 1955
    :cond_d
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1956
    sub-int v0, v10, v3

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1957
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1958
    const/4 v0, 0x0

    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1969
    :goto_6
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1970
    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lt v0, p1, :cond_1

    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lt v0, p2, :cond_1

    .line 1971
    const-string v0, "CameraApp"

    const-string v1, "surface not scaled %dx%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    const/4 v11, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    iput p1, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1973
    iput p2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_4

    .line 1960
    :cond_e
    sub-int v0, v10, v3

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1961
    const/4 v0, 0x0

    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1962
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_6

    .line 1976
    :cond_f
    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lt v0, p2, :cond_1

    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lt v0, p1, :cond_1

    .line 1977
    const-string v0, "CameraApp"

    const-string v1, "surface not scaled %dx%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    const/4 v11, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1978
    iput p2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1979
    iput p1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_4

    .line 1991
    :cond_10
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v0, v5}, Lcom/lge/camera/components/CameraPreview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1992
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/components/CameraPreview;->setAspectRatio(II)V

    goto/16 :goto_0
.end method

.method public changePreviewModeOnUiThread(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1647
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v0, :cond_0

    .line 1648
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 1649
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/OpenGLSurfaceView;->releasePreviewCallback(Landroid/hardware/Camera;)V

    .line 1650
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/OpenGLSurfaceView;->clearData(Z)V

    .line 1653
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/PreviewController$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/lge/camera/controller/PreviewController$8;-><init>(Lcom/lge/camera/controller/PreviewController;II)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1659
    return-void
.end method

.method public changeQuickPreviewMode(II)V
    .locals 11
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v10, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 1741
    const-string v0, "CameraApp"

    const-string v1, "QuickWindowCamera started"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f09013d

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1743
    .local v6, previewLayout:Landroid/view/View;
    const/4 v7, 0x0

    .line 1745
    .local v7, wideMargin:I
    int-to-double v0, p1

    int-to-double v8, p2

    div-double/2addr v0, v8

    const-wide v8, 0x3ff599999999999aL

    cmpl-double v0, v0, v8

    if-lez v0, :cond_1

    .line 1746
    sget p1, Lcom/lge/camera/properties/CameraConstants;->smartCoverWideSizeWidth:I

    .line 1747
    sget p2, Lcom/lge/camera/properties/CameraConstants;->smartCoverSizeHeight:I

    .line 1748
    sget v0, Lcom/lge/camera/properties/CameraConstants;->smartCoverSizeWidth:I

    sub-int v0, p1, v0

    div-int/lit8 v7, v0, 0x2

    .line 1756
    :goto_0
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1758
    .local v4, previewParam:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v5, 0x0

    .line 1760
    .local v5, surfaceParam:Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v0, :cond_2

    .line 1761
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v0}, Lcom/lge/camera/components/OpenGLSurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .end local v5           #surfaceParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1768
    .restart local v5       #surfaceParam:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_1
    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1769
    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->getPixelFromDimens(I)I

    move-result v0

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1770
    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1772
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1773
    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1775
    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-lt v0, p2, :cond_0

    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lt v0, p1, :cond_0

    .line 1776
    const-string v0, "CameraApp"

    const-string v1, "surface not scaled %dx%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v2, v10

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    iput p2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1778
    iput p1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1779
    iput v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1782
    :cond_0
    mul-int/lit8 v0, v7, -0x1

    iput v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1784
    const/16 v0, 0xd

    invoke-virtual {v5, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1785
    const/16 v0, 0xe

    invoke-virtual {v5, v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 1787
    invoke-direct/range {v0 .. v5}, Lcom/lge/camera/controller/PreviewController;->setOtherLayoutParam(IIILandroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 1788
    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1789
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v0, :cond_3

    .line 1790
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v0, v5}, Lcom/lge/camera/components/OpenGLSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1795
    :goto_2
    return-void

    .line 1751
    .end local v4           #previewParam:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5           #surfaceParam:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    sget p1, Lcom/lge/camera/properties/CameraConstants;->smartCoverSizeWidth:I

    .line 1752
    sget p2, Lcom/lge/camera/properties/CameraConstants;->smartCoverSizeHeight:I

    .line 1753
    const/4 v7, 0x0

    goto :goto_0

    .line 1764
    .restart local v4       #previewParam:Landroid/widget/RelativeLayout$LayoutParams;
    .restart local v5       #surfaceParam:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraPreview;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .end local v5           #surfaceParam:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .restart local v5       #surfaceParam:Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_1

    .line 1792
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v0, v5}, Lcom/lge/camera/components/CameraPreview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1793
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v0, p1, p2}, Lcom/lge/camera/components/CameraPreview;->setAspectRatio(II)V

    goto :goto_2
.end method

.method protected checkQualityAndStartPreview()V
    .locals 0

    .prologue
    .line 2608
    return-void
.end method

.method public checkStartPreviewCallback()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2117
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Time Info][6] Device StartPreview End : Camera Driver Preview Operation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Lcom/lge/camera/util/Common;->interimCheckTime(Z)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    const-string v2, "CameraApp"

    const-string v3, "##### TIME_CHECK previewStart onPreviewFrame!!!!!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2121
    :try_start_0
    invoke-static {}, Lcom/lge/camera/platform/PlatformDevice;->perfLockRelease()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1

    .line 2125
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->checkMediator()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2126
    const-string v2, "CameraApp"

    const-string v3, "exit checkStartPreviewCallback by (!checkMediator())"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2264
    :cond_0
    :goto_1
    return-void

    .line 2149
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    if-nez v2, :cond_2

    .line 2150
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setShutterButtonClicked(Z)V

    .line 2153
    :cond_2
    invoke-static {v7}, Lcom/lge/camera/util/Common;->checkEnteringTime(Z)V

    .line 2155
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    const-string v4, "shotmode_free_panorama"

    invoke-interface {v2, v3, v4}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2156
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/PreviewController$13;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/PreviewController$13;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2174
    :goto_2
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_3

    .line 2175
    const-string v2, "CameraApp"

    const-string v3, "startPreview OneShotPreviewCallback onPreviewFrame [start]"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->setEngineProcessor()V

    .line 2179
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v2

    if-ne v2, v7, :cond_8

    .line 2180
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v2, v7}, Lcom/lge/camera/components/OpenGLSurfaceView;->setFlipHorizontal(Z)V

    .line 2189
    :goto_3
    const-string v2, "CameraApp"

    const-string v3, "startPreview OneShotPreviewCallback onPreviewFrame [end]"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    :cond_3
    iput-boolean v6, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayCheck:Z

    .line 2193
    iput-boolean v6, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 2194
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v6}, Lcom/lge/camera/ControllerFunction;->setInCaptureProgress(Z)V

    .line 2195
    sput-boolean v6, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    .line 2196
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bEnterSetting =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2198
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-ne v2, v7, :cond_4

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isSettingControllerVisible()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2201
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/PreviewController$15;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/PreviewController$15;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2209
    :cond_4
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getEnableInput()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getGoingAutoReviewForQuickView()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->isDualCameraActive()Z

    move-result v2

    if-nez v2, :cond_5

    .line 2212
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2, v7}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 2213
    invoke-static {}, Lcom/lge/camera/util/Common;->isSmartCoverClosed()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2214
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/PreviewController$16;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/PreviewController$16;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2223
    :cond_5
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v2

    if-nez v2, :cond_a

    .line 2224
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/PreviewController$17;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/PreviewController$17;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2246
    :try_start_1
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v2, :cond_6

    .line 2247
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 2248
    .local v1, parameter:Landroid/hardware/Camera$Parameters;
    if-eqz v1, :cond_6

    .line 2249
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFocalLength()F

    move-result v3

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->setFocalLength(F)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2259
    .end local v1           #parameter:Landroid/hardware/Camera$Parameters;
    :cond_6
    :goto_4
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->checkPreviewPanelController()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->snapshotOnIdle()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2262
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getHandler()Lcom/lge/camera/util/MainHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getSnapshotRunnable()Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/camera/util/MainHandler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 2166
    :cond_7
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v3, Lcom/lge/camera/controller/PreviewController$14;

    invoke-direct {v3, p0}, Lcom/lge/camera/controller/PreviewController$14;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 2182
    :cond_8
    const-string v2, "shotmode_main_beauty"

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_camera_shot_mode"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2184
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v2, v6}, Lcom/lge/camera/components/OpenGLSurfaceView;->setFlipHorizontal(Z)V

    goto/16 :goto_3

    .line 2186
    :cond_9
    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v2, v6}, Lcom/lge/camera/components/CameraPreview;->setFlipHorizontal(Z)V

    goto/16 :goto_3

    .line 2252
    :catch_0
    move-exception v0

    .line 2253
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "CameraApp"

    const-string v3, "RuntimeException : "

    invoke-static {v2, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 2256
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_a
    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->unregisterObjectCallback()V

    goto :goto_4

    .line 2122
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method public closeCamera()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 937
    const-string v4, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "closeCamera()-start, mCameraDevice is null?:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_3

    .line 940
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v1, :cond_0

    .line 941
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v1}, Lcom/lge/camera/EffectsRecorder;->release()V

    .line 942
    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 945
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    if-eqz v1, :cond_1

    .line 946
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v1}, Lcom/lge/camera/EffectsCamera;->release()V

    .line 947
    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    .line 950
    :cond_1
    iput v3, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    .line 951
    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    .line 953
    iput-boolean v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraReleaseOnGoing:Z

    .line 955
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 961
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/ProjectVariables;->isSupportManualAntibanding()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 962
    const-string v1, "CameraApp"

    const-string v2, "closeCamera()-zoom reset"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    :try_start_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    if-nez v1, :cond_2

    .line 965
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->resetZoomController()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 972
    :cond_2
    :goto_2
    iput-object v6, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    .line 973
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    .line 975
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lge/camera/util/CameraHolder;->release()Z

    .line 976
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->mCameraReleaseOnGoing:Z

    .line 977
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->mFaceDetectionStarted:Z

    .line 979
    :cond_3
    const-string v1, "CameraApp"

    const-string v2, "closeCamera()-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    return-void

    :cond_4
    move v1, v3

    .line 937
    goto :goto_0

    .line 956
    :catch_0
    move-exception v0

    .line 957
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "closeCamera setZoomChangeListener exception : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 967
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 968
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "CameraApp"

    const-string v2, "closeCamera zoom reset exception : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public doCommandDelayed(Ljava/lang/String;J)V
    .locals 1
    .parameter "msg"
    .parameter "delay"

    .prologue
    .line 2394
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1, p2, p3}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    .line 2395
    return-void
.end method

.method protected doOnEffectesError(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 0
    .parameter "exception"
    .parameter "fileName"

    .prologue
    .line 2613
    return-void
.end method

.method protected doOnEffectsUpdate(II)V
    .locals 0
    .parameter "effectId"
    .parameter "effectMsg"

    .prologue
    .line 2612
    return-void
.end method

.method public effectsCamcorderActive()Z
    .locals 1

    .prologue
    .line 2579
    const/4 v0, 0x0

    return v0
.end method

.method public effectsCameraActive()Z
    .locals 1

    .prologue
    .line 2580
    const/4 v0, 0x0

    return v0
.end method

.method public enableQuickWindowButton(Z)V
    .locals 5
    .parameter "visible"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1829
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableQuickWindowButton="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1830
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mExitBtn:Lcom/lge/camera/components/ImageButtonEx;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mShutterBtn:Lcom/lge/camera/components/ShutterButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mRotateExitBtn:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mRotateShutterBtn:Lcom/lge/camera/components/RotateImageButton;

    if-eqz v0, :cond_0

    .line 1833
    if-eqz p1, :cond_1

    .line 1834
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mExitBtn:Lcom/lge/camera/components/ImageButtonEx;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/ImageButtonEx;->setVisibility(I)V

    .line 1835
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mShutterBtn:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/ShutterButton;->setVisibility(I)V

    .line 1836
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mRotateExitBtn:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 1837
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mRotateShutterBtn:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v3}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 1845
    :cond_0
    :goto_0
    return-void

    .line 1839
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mExitBtn:Lcom/lge/camera/components/ImageButtonEx;

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/ImageButtonEx;->setVisibility(I)V

    .line 1840
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mShutterBtn:Lcom/lge/camera/components/ShutterButton;

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/ShutterButton;->setVisibility(I)V

    .line 1841
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mRotateExitBtn:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    .line 1842
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mRotateShutterBtn:Lcom/lge/camera/components/RotateImageButton;

    invoke-virtual {v0, v4}, Lcom/lge/camera/components/RotateImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter "resId"

    .prologue
    .line 2384
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 2516
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 2399
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getBeautyshotProgress()Z
    .locals 1

    .prologue
    .line 1471
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->isBeautyshotProgress:Z

    return v0
.end method

.method public getCameraDevice()Landroid/hardware/Camera;
    .locals 3

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 192
    const-string v0, "CameraApp"

    const-string v1, "Camera ref is null. getCameraDevice() return null."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;
    .locals 1

    .prologue
    .line 1565
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    return-object v0
.end method

.method public getCameraGLPreviewExtra()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    return-object v0
.end method

.method public getCameraPreview()Lcom/lge/camera/components/CameraPreview;
    .locals 1

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    return-object v0
.end method

.method public getCurrentModule()Lcom/lge/camera/module/Module;
    .locals 1

    .prologue
    .line 2482
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCurrentModule()Lcom/lge/camera/module/Module;

    move-result-object v0

    return-object v0
.end method

.method public getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lcom/lge/olaworks/library/EngineProcessor;

    invoke-direct {v0}, Lcom/lge/olaworks/library/EngineProcessor;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    return-object v0
.end method

.method public getFocusAreaHeight()I
    .locals 1

    .prologue
    .line 2520
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getFocusAreaHeight()I

    move-result v0

    return v0
.end method

.method public getLiveEffect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2574
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCurrentEffect:Ljava/lang/String;

    return-object v0
.end method

.method public getLiveEffectList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOrientationDegree()I
    .locals 1

    .prologue
    .line 2591
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getOrientationDegree()I

    move-result v0

    return v0
.end method

.method public getPIPCameraController()Lcom/lge/camera/controller/camera/PIPCameraController;
    .locals 1

    .prologue
    .line 2593
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    return-object v0
.end method

.method public getPIPController()Lcom/lge/camera/controller/PIPController;
    .locals 2

    .prologue
    .line 2595
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2596
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    .line 2598
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    goto :goto_0
.end method

.method public getPIPRecordingController()Lcom/lge/camera/controller/camcorder/PIPRecordingController;
    .locals 1

    .prologue
    .line 2592
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    return-object v0
.end method

.method public abstract getPreviewSizeOnDevice()Ljava/lang/String;
.end method

.method public abstract getPreviewSizeOnScreen()Ljava/lang/String;
.end method

.method public getPreviousEffectType()I
    .locals 1

    .prologue
    .line 2609
    const/4 v0, 0x0

    return v0
.end method

.method public getPreviousResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2610
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 2512
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 2459
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1553
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f09013d

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1554
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f09013e

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1556
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f09013f

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1557
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f090140

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1558
    return-void
.end method

.method public hideSmartZoomFocusView()V
    .locals 0

    .prologue
    .line 2588
    return-void
.end method

.method public hideSubWindowResizeHandler()V
    .locals 0

    .prologue
    .line 2586
    return-void
.end method

.method public inflateStub(I)Landroid/view/View;
    .locals 1
    .parameter "resId"

    .prologue
    .line 2389
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public initController()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 139
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0900c2

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 141
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09013e

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/CameraPreview;

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    .line 142
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v1, p0}, Lcom/lge/camera/components/CameraPreview;->setDeviceListener(Lcom/lge/camera/components/CameraPreview$OnDeviceListener;)V

    .line 143
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09013f

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/OpenGLSurfaceView;

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    .line 144
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v1, p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->initOpenGLSurfaceView(Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;)V

    .line 145
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f090140

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    .line 147
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f09013d

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 149
    .local v0, previewLayout:Landroid/view/View;
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0900ce

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->inflateStub(I)Landroid/view/View;

    .line 151
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0901e5

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/ImageButtonEx;

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mExitBtn:Lcom/lge/camera/components/ImageButtonEx;

    .line 153
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0901e6

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mRotateExitBtn:Lcom/lge/camera/components/RotateImageButton;

    .line 155
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0901e7

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/ShutterButton;

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mShutterBtn:Lcom/lge/camera/components/ShutterButton;

    .line 157
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v2, 0x7f0901e8

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/lge/camera/components/RotateImageButton;

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mRotateShutterBtn:Lcom/lge/camera/components/RotateImageButton;

    .line 160
    invoke-virtual {p0, v4}, Lcom/lge/camera/controller/PreviewController;->enableQuickWindowButton(Z)V

    .line 162
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mExitBtn:Lcom/lge/camera/components/ImageButtonEx;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mShutterBtn:Lcom/lge/camera/components/ShutterButton;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mExitBtn:Lcom/lge/camera/components/ImageButtonEx;

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mQuickWindowExitButtonTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/ImageButtonEx;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mShutterBtn:Lcom/lge/camera/components/ShutterButton;

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mQuickShutterButtonClickListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/ShutterButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 165
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mShutterBtn:Lcom/lge/camera/components/ShutterButton;

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mQuickShutterButtonLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v2}, Lcom/lge/camera/components/ShutterButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "shotmode_main_beauty"

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "shotmode_front_beauty"

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v3, "key_camera_shot_mode"

    invoke-interface {v2, v3}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    .line 178
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->show()V

    .line 179
    iput-boolean v4, p0, Lcom/lge/camera/controller/PreviewController;->mChangeMode:Z

    .line 181
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_2

    .line 182
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 183
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 186
    :cond_2
    iget-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    invoke-virtual {p0, v1}, Lcom/lge/camera/controller/PreviewController;->setupHolder(Z)V

    .line 187
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "previewLayout initController ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void

    .line 175
    :cond_3
    iput-boolean v4, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    goto :goto_0
.end method

.method protected initPIPSubWindow(Ljava/lang/String;)V
    .locals 0
    .parameter "videoSize"

    .prologue
    .line 2575
    return-void
.end method

.method public initSmartZoomFocusView()V
    .locals 0

    .prologue
    .line 2590
    return-void
.end method

.method protected initializeEffectsPreview()V
    .locals 0

    .prologue
    .line 2603
    return-void
.end method

.method public initializeRecordingEffect(Ljava/lang/String;JIJ)V
    .locals 0
    .parameter "filepath_name"
    .parameter "mMaxFileSize"
    .parameter "mMaxDurationTime"
    .parameter "freeSpace"

    .prologue
    .line 2602
    return-void
.end method

.method public isCamcorderRotation(Z)Z
    .locals 1
    .parameter "checkWithPause"

    .prologue
    .line 2487
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->isCamcorderRotation(Z)Z

    move-result v0

    return v0
.end method

.method public isCameraDeviceClosed()Z
    .locals 1

    .prologue
    .line 2492
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraReleaseOnGoing()Z
    .locals 1

    .prologue
    .line 1596
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraReleaseOnGoing:Z

    return v0
.end method

.method public isChangeMode()Z
    .locals 1

    .prologue
    .line 2077
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mChangeMode:Z

    return v0
.end method

.method public isConfigureLandscape()Z
    .locals 1

    .prologue
    .line 2508
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v0

    return v0
.end method

.method public isDualCameraActive()Z
    .locals 1

    .prologue
    .line 2582
    const/4 v0, 0x0

    return v0
.end method

.method public isDualRecordingActive()Z
    .locals 1

    .prologue
    .line 2581
    const/4 v0, 0x0

    return v0
.end method

.method public isLiveEffectActive()Z
    .locals 1

    .prologue
    .line 2584
    const/4 v0, 0x0

    return v0
.end method

.method public isPreviewOnGoing()Z
    .locals 1

    .prologue
    .line 1030
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    return v0
.end method

.method public isPreviewing()Z
    .locals 1

    .prologue
    .line 1018
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    return v0
.end method

.method public isReadyEngineProcessor()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->isReadyEngineProcessor:Z

    return v0
.end method

.method public isSensorSupportBackdropper()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mIsSensorSupportBackdropper:Z

    return v0
.end method

.method public isSmartZoomRecordingActive()Z
    .locals 1

    .prologue
    .line 2583
    const/4 v0, 0x0

    return v0
.end method

.method public jpegCallbackOnDualCameraPictureTaken([B)V
    .locals 3
    .parameter "previewFrameJpeg"

    .prologue
    .line 2496
    move-object v0, p1

    .line 2497
    .local v0, frameJpeg:[B
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/PreviewController$22;

    invoke-direct {v2, p0, v0}, Lcom/lge/camera/controller/PreviewController$22;-><init>(Lcom/lge/camera/controller/PreviewController;[B)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2505
    return-void
.end method

.method protected makeEffectList()V
    .locals 0

    .prologue
    .line 2571
    return-void
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x4

    const/4 v3, 0x1

    .line 1089
    const-string v1, "CameraApp"

    const-string v2, "onCreate-start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    iput-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 1091
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1092
    new-instance v1, Lcom/lge/camera/EffectsRecorder;

    iget-object v2, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lge/camera/EffectsRecorder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 1094
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualRecordingSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1097
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    invoke-static {v1, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iput v0, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    .line 1100
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v0

    iget v1, p0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    .line 1101
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    :cond_1
    iput-object v4, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    .line 1106
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 1107
    new-instance v0, Lcom/lge/camera/EffectsCamera;

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/camera/EffectsCamera;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    .line 1110
    :cond_2
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 1112
    invoke-static {}, Lcom/lge/camera/util/Common;->isFaceUnlock()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1113
    const-string v0, "CameraApp"

    const-string v1, "startPreviewThread start-onCreate"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mUseOnResume:Z

    .line 1115
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mThreadStartRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1118
    :cond_3
    const-string v0, "CameraApp"

    const-string v1, "onCreate-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    return-void

    .line 1097
    :cond_4
    const/16 v0, 0xa

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1438
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1440
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mChangeMode:Z

    if-nez v0, :cond_0

    .line 1441
    invoke-static {}, Lcom/lge/camera/util/SecureImageUtil;->get()Lcom/lge/camera/util/SecureImageUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/util/SecureImageUtil;->release()V

    .line 1443
    :cond_0
    iput v3, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    .line 1444
    const-string v0, "off"

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->previousEffectParameter:Ljava/lang/Object;

    .line 1445
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    .line 1447
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v0, :cond_1

    .line 1448
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v0}, Lcom/lge/camera/components/OpenGLSurfaceView;->onDestroy()V

    .line 1450
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->closeCamera()V

    .line 1451
    invoke-virtual {p0, v3}, Lcom/lge/camera/controller/PreviewController;->releaseEngine(Z)V

    .line 1452
    invoke-static {v3}, Lcom/lge/camera/util/Common;->setQuickWindowCameraExecuted(Z)V

    .line 1454
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1455
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    .line 1456
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    .line 1457
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    .line 1458
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    .line 1459
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mErrorCallback:Lcom/lge/camera/controller/PreviewController$CameraErrorCallback;

    .line 1461
    invoke-super {p0}, Lcom/lge/camera/controller/Controller;->onDestroy()V

    .line 1462
    const-string v0, "CameraApp"

    const-string v1, "onDestroy-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1463
    return-void
.end method

.method public onLearningDoneProcess()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2404
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 2405
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2406
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/EffectsRecorder;->sendMessage(II)V

    .line 2424
    :cond_0
    :goto_0
    return-void

    .line 2407
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2408
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/EffectsRecorder;->sendMessage(II)V

    .line 2409
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v1, Lcom/lge/camera/controller/PreviewController$21;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/PreviewController$21;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2422
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/EffectsCamera;->sendMessage(II)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1256
    const-string v7, "CameraApp"

    const-string v8, "onPause-start "

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    iput-boolean v11, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayCheck:Z

    .line 1259
    sput-boolean v11, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    .line 1260
    invoke-static {v11}, Lcom/lge/camera/util/Common;->setQuickWindowCameraExecuted(Z)V

    .line 1261
    iget-boolean v7, p0, Lcom/lge/camera/controller/PreviewController;->mChangedManualFocusToDefault:Z

    if-eqz v7, :cond_0

    .line 1262
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_focus"

    const-string v9, "manual"

    invoke-interface {v7, v8, v9}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1263
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 1264
    iput-boolean v11, p0, Lcom/lge/camera/controller/PreviewController;->mChangedManualFocusToDefault:Z

    .line 1266
    :cond_0
    iput v11, p0, Lcom/lge/camera/controller/PreviewController;->mCheckCountOf_CAMERA_ERROR_SERVER_DIED:I

    .line 1268
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->setPreviewDisplayLatchCountDown()V

    .line 1270
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    if-eqz v7, :cond_1

    .line 1271
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v7}, Lcom/lge/camera/components/OpenGLSurfaceView;->onPause()V

    .line 1274
    :cond_1
    invoke-virtual {p0, v12}, Lcom/lge/camera/controller/PreviewController;->releaseEngine(Z)V

    .line 1276
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->waitStartPreviewThreadDone()V

    .line 1279
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v7

    if-ne v7, v12, :cond_13

    .line 1280
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_preview_size_on_device"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v6

    .line 1281
    .local v6, pref:Lcom/lge/camera/setting/ListPreference;
    const/4 v5, 0x0

    .line 1282
    .local v5, indexOfPreviousResolution:I
    if-eqz v6, :cond_2

    .line 1283
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v5

    .line 1284
    const/4 v7, -0x1

    if-ne v5, v7, :cond_2

    .line 1285
    const-string v7, "CameraApp"

    const-string v8, "indexOfPreviousResolution has wrong value"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1289
    :cond_2
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v7

    if-nez v7, :cond_f

    .line 1290
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveVideoSizeIndexAtPrimaryNormalMode(Landroid/content/Context;I)V

    .line 1295
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->isLiveEffectActive()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1296
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getLiveEffectList()Ljava/util/ArrayList;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v8}, Lcom/lge/camera/ControllerFunction;->getLiveEffect()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 1297
    .local v4, effectIndex:I
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v7

    if-nez v7, :cond_10

    .line 1298
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveLiveEffectFaceIndex(Landroid/content/Context;I)V

    .line 1303
    .end local v4           #effectIndex:I
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->isDualRecordingActive()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1304
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCurrentPIPMask()I

    move-result v1

    .line 1305
    .local v1, DualRecordingPipIndex:I
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v7

    if-nez v7, :cond_11

    .line 1306
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveDualCamcorderPIPIndex(Landroid/content/Context;I)V

    .line 1311
    .end local v1           #DualRecordingPipIndex:I
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->isSmartZoomRecordingActive()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1312
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCurrentPIPMask()I

    move-result v2

    .line 1313
    .local v2, SmartZoomPipIndex:I
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v7

    if-nez v7, :cond_12

    .line 1314
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveSmartZoomPIPIndex(Landroid/content/Context;I)V

    .line 1333
    .end local v2           #SmartZoomPipIndex:I
    .end local v5           #indexOfPreviousResolution:I
    .end local v6           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_5
    :goto_3
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v7

    if-ne v7, v12, :cond_18

    .line 1334
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->isLiveEffectActive()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1335
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.HideLiveEffectSubMenuDrawer"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    .line 1350
    :cond_6
    :goto_4
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isChangingToOtherActivity()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1351
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v7

    if-nez v7, :cond_7

    .line 1352
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lge/camera/util/CameraHolder;->keep()V

    .line 1355
    :cond_7
    :try_start_0
    const-string v7, "CameraApp"

    const-string v8, "check closeCamera"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->closeCamera()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1360
    :goto_5
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v11}, Lcom/lge/camera/ControllerFunction;->setChangingToOtherActivity(Z)V

    .line 1396
    :cond_8
    :goto_6
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    if-eqz v7, :cond_9

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 1397
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/lge/camera/components/OpenGLSurfaceView;->releasePreviewCallback(Landroid/hardware/Camera;)V

    .line 1398
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v7, v11}, Lcom/lge/camera/components/OpenGLSurfaceView;->clearData(Z)V

    .line 1399
    invoke-virtual {p0, v11}, Lcom/lge/camera/controller/PreviewController;->releaseEngine(Z)V

    .line 1401
    :cond_9
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7, v10}, Lcom/lge/camera/ControllerFunction;->swapPreviewEffect(Lcom/lge/olaworks/library/BaseEngine;)V

    .line 1402
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    if-eqz v7, :cond_a

    .line 1403
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v7}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->unbind()V

    .line 1404
    iput-object v10, p0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    .line 1407
    :cond_a
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    if-eqz v7, :cond_b

    .line 1408
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    invoke-virtual {v7}, Lcom/lge/camera/controller/camera/PIPCameraController;->unbind()V

    .line 1409
    iput-object v10, p0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    .line 1412
    :cond_b
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mPlatformDevice:Lcom/lge/camera/platform/PlatformDevice;

    if-eqz v7, :cond_c

    .line 1413
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mPlatformDevice:Lcom/lge/camera/platform/PlatformDevice;

    invoke-virtual {v7}, Lcom/lge/camera/platform/PlatformDevice;->unbind()V

    .line 1414
    iput-object v10, p0, Lcom/lge/camera/controller/PreviewController;->mPlatformDevice:Lcom/lge/camera/platform/PlatformDevice;

    .line 1417
    :cond_c
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v7, :cond_d

    .line 1418
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v7}, Lcom/lge/camera/EffectsRecorder;->close()V

    .line 1419
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v7, v10}, Lcom/lge/camera/EffectsRecorder;->setEffectsListener(Lcom/lge/camera/EffectsBase$EffectsListener;)V

    .line 1420
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v7, v10}, Lcom/lge/camera/EffectsRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1421
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v7, v10}, Lcom/lge/camera/EffectsRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1422
    iput-object v10, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 1425
    :cond_d
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    if-eqz v7, :cond_e

    .line 1426
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v7}, Lcom/lge/camera/EffectsCamera;->close()V

    .line 1427
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v7, v10}, Lcom/lge/camera/EffectsCamera;->setEffectsListener(Lcom/lge/camera/EffectsBase$EffectsListener;)V

    .line 1428
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v7, v10}, Lcom/lge/camera/EffectsCamera;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 1429
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    invoke-virtual {v7, v10}, Lcom/lge/camera/EffectsCamera;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 1430
    iput-object v10, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    .line 1432
    :cond_e
    iput-boolean v11, p0, Lcom/lge/camera/controller/PreviewController;->mIsStartPreviewEffectOnGoing:Z

    .line 1433
    const-string v7, "CameraApp"

    const-string v8, "onPause-end "

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    return-void

    .line 1292
    .restart local v5       #indexOfPreviousResolution:I
    .restart local v6       #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_f
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveVideoSizeIndexAtSecondaryNormalMode(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1300
    .restart local v4       #effectIndex:I
    :cond_10
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v4}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveFrontLiveEffectFaceIndex(Landroid/content/Context;I)V

    goto/16 :goto_1

    .line 1308
    .end local v4           #effectIndex:I
    .restart local v1       #DualRecordingPipIndex:I
    :cond_11
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveFrontDualCamcorderPIPIndex(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 1316
    .end local v1           #DualRecordingPipIndex:I
    .restart local v2       #SmartZoomPipIndex:I
    :cond_12
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v2}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveFrontSmartZoomPIPIndex(Landroid/content/Context;I)V

    goto/16 :goto_3

    .line 1320
    .end local v2           #SmartZoomPipIndex:I
    .end local v5           #indexOfPreviousResolution:I
    .end local v6           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_13
    const-string v7, "CameraApp"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isDualCamera : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->isDualCameraActive()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->isDualCameraActive()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1322
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCurrentPIPMask()I

    move-result v0

    .line 1323
    .local v0, DualCameraPipIndex:I
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v7

    if-nez v7, :cond_14

    .line 1324
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveDualCameraPIPIndex(Landroid/content/Context;I)V

    goto/16 :goto_3

    .line 1325
    :cond_14
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v7

    if-ne v7, v12, :cond_5

    .line 1326
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/lge/camera/util/SharedPreferenceUtil;->saveFrontDualCameraPIPIndex(Landroid/content/Context;I)V

    goto/16 :goto_3

    .line 1336
    .end local v0           #DualCameraPipIndex:I
    :cond_15
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->isDualRecordingActive()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1337
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1338
    :cond_16
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_video_record_mode"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "recordmode_wdr"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 1339
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "key_video_record_mode"

    const-string v9, "recordmode_normal"

    invoke-interface {v7, v8, v9}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_4

    .line 1340
    :cond_17
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->isSmartZoomRecordingActive()Z

    move-result v7

    if-eqz v7, :cond_6

    goto/16 :goto_4

    .line 1342
    :cond_18
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v7

    if-nez v7, :cond_6

    .line 1343
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v7

    if-nez v7, :cond_19

    const-string v7, "face_tracking"

    iget-object v8, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v9, "key_focus"

    invoke-interface {v8, v9}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 1345
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->stopFaceDetection()V

    .line 1347
    :cond_19
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v8, "com.lge.camera.command.HidePIPFrameSubMenu"

    invoke-interface {v7, v8}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1357
    :catch_0
    move-exception v3

    .line 1358
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 1363
    .end local v3           #e:Ljava/lang/Exception;
    :cond_1a
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->effectsCamcorderActive()Z

    move-result v7

    if-nez v7, :cond_1e

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->effectsCameraActive()Z

    move-result v7

    if-nez v7, :cond_1e

    .line 1364
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    if-eqz v7, :cond_1b

    .line 1365
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/lge/camera/components/CameraPreview;->setVisibility(I)V

    .line 1367
    :cond_1b
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    if-eqz v7, :cond_1c

    .line 1368
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/lge/camera/components/OpenGLSurfaceView;->setVisibility(I)V

    .line 1370
    :cond_1c
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    if-eqz v7, :cond_1d

    .line 1371
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1373
    :cond_1d
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 1374
    iget-boolean v7, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v7, :cond_1f

    .line 1375
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    if-eqz v7, :cond_1e

    .line 1376
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v7, v8}, Lcom/lge/camera/components/OpenGLSurfaceView;->close(Landroid/hardware/Camera;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1388
    :cond_1e
    :goto_7
    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isConfigurationChanging()Z

    move-result v7

    if-nez v7, :cond_8

    .line 1389
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->closeCamera()V

    goto/16 :goto_6

    .line 1379
    :cond_1f
    :try_start_2
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    if-eqz v7, :cond_1e

    .line 1380
    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    iget-object v8, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v7, v8}, Lcom/lge/camera/components/CameraPreview;->close(Landroid/hardware/Camera;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_7

    .line 1384
    :catch_1
    move-exception v3

    .line 1385
    .local v3, e:Ljava/lang/NullPointerException;
    const-string v7, "CameraApp"

    const-string v8, "NullPointerException!"

    invoke-static {v7, v8, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public onResume()V
    .locals 20

    .prologue
    .line 1124
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onResume-start appmode:"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PreviewController;->mPlatformDevice:Lcom/lge/camera/platform/PlatformDevice;

    if-nez v1, :cond_0

    .line 1128
    new-instance v1, Lcom/lge/camera/platform/PlatformDevice;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/lge/camera/platform/PlatformDevice;-><init>(Lcom/lge/camera/platform/PlatformDevice$PlatformDeviceInterface;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lge/camera/controller/PreviewController;->mPlatformDevice:Lcom/lge/camera/platform/PlatformDevice;

    .line 1130
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->readEffectType()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    .line 1131
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->readEffectParameter()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    .line 1132
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/lge/camera/controller/PreviewController;->previousEffectType:I

    .line 1133
    const-string v1, "off"

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lge/camera/controller/PreviewController;->previousEffectParameter:Ljava/lang/Object;

    .line 1134
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mEffectType : "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->readEffectType()I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, " mEffectParameter : "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->readEffectParameter()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1140
    sget v10, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_WIDTH:I

    .line 1141
    .local v10, maxScreenSizeX:I
    sget v11, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    .line 1148
    .local v11, maxScreenSizeY:I
    :goto_0
    const/4 v1, 0x1

    const/high16 v2, 0x4387

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v0, v1

    move/from16 v17, v0

    .line 1152
    .local v17, subWindowWidth:I
    const/4 v1, 0x1

    const/high16 v2, 0x4334

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/lge/camera/ControllerFunction;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v14, v1

    .line 1159
    .local v14, subWindowHeight:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a001a

    invoke-static {v1, v2}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v15

    .line 1160
    .local v15, subWindowMarginX:I
    const/16 v16, 0x0

    .line 1162
    .local v16, subWindowMarginY:I
    sub-int v5, v10, v15

    .line 1163
    .local v5, subWindowX1:I
    sub-int v6, v11, v16

    .line 1164
    .local v6, subWindowY1:I
    sub-int v3, v5, v17

    .line 1165
    .local v3, subWindowX0:I
    sub-int v4, v6, v14

    .line 1167
    .local v4, subWindowY0:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 1168
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    if-nez v1, :cond_8

    .line 1169
    new-instance v1, Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;-><init>(Lcom/lge/camera/controller/PIPController$PIPControllerFunction;IIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    .line 1173
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-nez v1, :cond_1

    .line 1174
    new-instance v1, Lcom/lge/camera/EffectsRecorder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lge/camera/EffectsRecorder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 1188
    :cond_1
    :goto_2
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PreviewController;->setEffectRecorderPausing(Z)V

    .line 1190
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1191
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isLiveEffectSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1192
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x4

    :goto_3
    move-object/from16 v0, p0

    iput v1, v0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    .line 1195
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/lge/camera/controller/PreviewController;->mProfileType:I

    invoke-static {v1, v2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    .line 1196
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "profile : "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, "x"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/controller/PreviewController;->mProfile:Landroid/media/CamcorderProfile;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->recordingControllerShow()V

    .line 1200
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1201
    const/4 v9, 0x0

    .line 1202
    .local v9, indexOfPreviousResolution:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v1

    if-nez v1, :cond_c

    .line 1203
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/SharedPreferenceUtil;->getVideoSizeIndexAtPrimaryNormalMode(Landroid/content/Context;)I

    move-result v9

    .line 1208
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_preview_size_on_device"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v13

    .line 1209
    .local v13, pref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v13, :cond_d

    const/4 v1, -0x1

    if-eq v9, v1, :cond_d

    .line 1210
    invoke-virtual {v13}, Lcom/lge/camera/setting/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    .line 1218
    .end local v9           #indexOfPreviousResolution:I
    .end local v13           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v18

    .line 1219
    .local v18, video_state:I
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onResume : mPreviewing:"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, ", mStartPreviewOnGoing:"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, ", video_state: "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    const/4 v12, 0x0

    .line 1224
    .local v12, needStartPreview:Z
    const-wide/16 v7, 0x0

    .line 1225
    .local v7, delayTime:J
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    if-nez v1, :cond_e

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    if-nez v1, :cond_e

    sget-boolean v1, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    if-nez v1, :cond_e

    const/4 v1, 0x6

    move/from16 v0, v18

    if-eq v0, v1, :cond_e

    const/4 v1, 0x5

    move/from16 v0, v18

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getStatus()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_e

    .line 1231
    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/controller/PreviewController;->show()V

    .line 1232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {v1}, Lcom/lge/camera/components/OpenGLSurfaceView;->onResume()V

    .line 1233
    const/4 v12, 0x1

    .line 1234
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/lge/camera/controller/PreviewController;->mUseOnResume:Z

    .line 1239
    :goto_6
    invoke-static {}, Lcom/lge/camera/util/Common;->isFaceUnlock()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1240
    const-wide/16 v7, 0x12c

    .line 1241
    const/4 v12, 0x1

    .line 1244
    :cond_4
    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1247
    :cond_5
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "mStartPreviewThread : OnResume - mUseOnResume = "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/controller/PreviewController;->mUseOnResume:Z

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, " delayTime is = "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mThreadStartRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->removePostRunnable(Ljava/lang/Object;)V

    .line 1249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/PreviewController;->mThreadStartRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2, v7, v8}, Lcom/lge/camera/ControllerFunction;->postOnUiThread(Ljava/lang/Runnable;J)V

    .line 1251
    :cond_6
    const-string v1, "CameraApp"

    const-string v2, "onResume-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    return-void

    .line 1143
    .end local v3           #subWindowX0:I
    .end local v4           #subWindowY0:I
    .end local v5           #subWindowX1:I
    .end local v6           #subWindowY1:I
    .end local v7           #delayTime:J
    .end local v10           #maxScreenSizeX:I
    .end local v11           #maxScreenSizeY:I
    .end local v12           #needStartPreview:Z
    .end local v14           #subWindowHeight:I
    .end local v15           #subWindowMarginX:I
    .end local v16           #subWindowMarginY:I
    .end local v17           #subWindowWidth:I
    .end local v18           #video_state:I
    :cond_7
    sget v10, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_HEIGHT:I

    .line 1144
    .restart local v10       #maxScreenSizeX:I
    sget v11, Lcom/lge/camera/properties/CameraConstants;->LCD_SIZE_WIDTH:I

    .restart local v11       #maxScreenSizeY:I
    goto/16 :goto_0

    .line 1171
    .restart local v3       #subWindowX0:I
    .restart local v4       #subWindowY0:I
    .restart local v5       #subWindowX1:I
    .restart local v6       #subWindowY1:I
    .restart local v14       #subWindowHeight:I
    .restart local v15       #subWindowMarginX:I
    .restart local v16       #subWindowMarginY:I
    .restart local v17       #subWindowWidth:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PreviewController;->mPIPRecordingController:Lcom/lge/camera/controller/camcorder/PIPRecordingController;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/lge/camera/controller/camcorder/PIPRecordingController;->setSubWindowPosition(IIII)V

    goto/16 :goto_1

    .line 1177
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    if-nez v1, :cond_a

    .line 1178
    new-instance v1, Lcom/lge/camera/controller/camera/PIPCameraController;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/lge/camera/controller/camera/PIPCameraController;-><init>(Lcom/lge/camera/controller/PIPController$PIPControllerFunction;IIII)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    .line 1182
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    if-nez v1, :cond_1

    .line 1183
    new-instance v1, Lcom/lge/camera/EffectsCamera;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v2}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lge/camera/EffectsCamera;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    goto/16 :goto_2

    .line 1180
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/PreviewController;->mPIPCameraController:Lcom/lge/camera/controller/camera/PIPCameraController;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/lge/camera/controller/camera/PIPCameraController;->setSubWindowPosition(IIII)V

    goto :goto_7

    .line 1192
    :cond_b
    const/16 v1, 0xa

    goto/16 :goto_3

    .line 1205
    .restart local v9       #indexOfPreviousResolution:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/SharedPreferenceUtil;->getVideoSizeIndexAtSecondaryNormalMode(Landroid/content/Context;)I

    move-result v9

    goto/16 :goto_4

    .line 1212
    .restart local v13       #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_d
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error: pref = "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v19, ", indexOfPreviousResolution = "

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1236
    .end local v9           #indexOfPreviousResolution:I
    .end local v13           #pref:Lcom/lge/camera/setting/ListPreference;
    .restart local v7       #delayTime:J
    .restart local v12       #needStartPreview:Z
    .restart local v18       #video_state:I
    :cond_e
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/lge/camera/controller/PreviewController;->mUseOnResume:Z

    goto/16 :goto_6
.end method

.method public onSetBitmapDoneProcess()V
    .locals 2

    .prologue
    .line 2427
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/controller/PIPController;->setBitmapDone(Z)V

    .line 2428
    return-void
.end method

.method public pauseAndResumeRecording(Z)V
    .locals 0
    .parameter "pause"

    .prologue
    .line 2605
    return-void
.end method

.method public quickFunctionControllerRefresh(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 2438
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->quickFunctionControllerRefresh(Z)V

    .line 2440
    return-void
.end method

.method protected readEffectParameter()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2578
    const/4 v0, 0x0

    return-object v0
.end method

.method protected readEffectType()I
    .locals 1

    .prologue
    .line 2577
    const/4 v0, 0x0

    return v0
.end method

.method public releaseEngine(Z)V
    .locals 3
    .parameter "checkEngineTag"

    .prologue
    const/4 v2, 0x0

    .line 1475
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-eqz v0, :cond_0

    .line 1476
    if-eqz p1, :cond_1

    .line 1477
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    const-string v1, "AutoPanorama"

    invoke-virtual {v0, v1}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    const-string v1, "FaceBeauty"

    invoke-virtual {v0, v1}, Lcom/lge/olaworks/library/EngineProcessor;->checkEngineTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->stop()V

    .line 1480
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->releaseAllEngine()V

    .line 1481
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->destroy()V

    .line 1482
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 1494
    :cond_0
    :goto_0
    return-void

    .line 1485
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->isBeautyshotProgress:Z

    if-nez v0, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->stop()V

    .line 1487
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->releaseAllEngine()V

    .line 1488
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->destroy()V

    .line 1489
    iput-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 1490
    const-string v0, "CameraApp"

    const-string v1, "release engine complete."

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public removePreviewCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 588
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->isReadyEngineProcessor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    const-string v0, "CameraApp"

    const-string v1, "removePreviewCallback call"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 595
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 596
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->isReadyEngineProcessor:Z

    goto :goto_0
.end method

.method public restartPreview(Landroid/hardware/Camera$Parameters;Z)V
    .locals 5
    .parameter "parameter"
    .parameter "useCallBack"

    .prologue
    const/4 v4, 0x0

    .line 983
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restartPreview()-useCallBack : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->isPreviewing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    if-eqz v1, :cond_1

    .line 985
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "Not previewing now, do nothing."

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    :goto_0
    return-void

    .line 988
    :cond_1
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 990
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v1

    if-nez v1, :cond_2

    .line 991
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1, v4}, Lcom/lge/camera/ControllerFunction;->setApplicationMode(I)V

    .line 997
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/controller/PreviewController;->startPreview(Landroid/hardware/Camera$Parameters;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/PreviewController$5;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/PreviewController$5;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 993
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->setApplicationMode(I)V

    goto :goto_1

    .line 998
    :catch_0
    move-exception v0

    .line 999
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1000
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v2, Lcom/lge/camera/controller/PreviewController$4;

    invoke-direct {v2, p0}, Lcom/lge/camera/controller/PreviewController$4;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public restoreSubWindow()V
    .locals 1

    .prologue
    .line 2524
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getPIPController()Lcom/lge/camera/controller/PIPController;

    move-result-object v0

    .line 2525
    .local v0, pip:Lcom/lge/camera/controller/PIPController;
    if-eqz v0, :cond_0

    .line 2526
    invoke-virtual {v0}, Lcom/lge/camera/controller/PIPController;->restoreSubWindow()V

    .line 2528
    :cond_0
    return-void
.end method

.method public setBeautyshotProgress(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 1468
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewController;->isBeautyshotProgress:Z

    .line 1469
    return-void
.end method

.method public setButtonRemainRefresh()V
    .locals 1

    .prologue
    .line 2449
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->setButtonRemainRefresh()V

    .line 2450
    return-void
.end method

.method public setChangeMode()V
    .locals 1

    .prologue
    .line 2074
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mChangeMode:Z

    .line 2075
    return-void
.end method

.method public setEffectRecorderPausing(Z)V
    .locals 1
    .parameter "set"

    .prologue
    .line 2531
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-eqz v0, :cond_0

    .line 2532
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    invoke-virtual {v0, p1}, Lcom/lge/camera/EffectsRecorder;->isOnPausing(Z)V

    .line 2534
    :cond_0
    return-void
.end method

.method public setEnable3ALocks(Landroid/hardware/Camera$Parameters;Z)Z
    .locals 6
    .parameter "parameters"
    .parameter "lock"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2081
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->checkMediator()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 2113
    :cond_1
    :goto_0
    return v1

    .line 2084
    :cond_2
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#### setEnable3ALocks : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2087
    if-nez p1, :cond_6

    .line 2088
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 2090
    if-eqz p1, :cond_5

    .line 2091
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2092
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 2094
    :cond_3
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2095
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 2097
    :cond_4
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2109
    :catch_0
    move-exception v0

    .line 2110
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CameraApp"

    const-string v3, "RuntimeException-setEnable3ALocks: "

    invoke-static {v1, v3, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_5
    move v1, v2

    .line 2113
    goto :goto_0

    .line 2101
    :cond_6
    :try_start_1
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2102
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 2104
    :cond_7
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2105
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setEngineProcessor()V
    .locals 3

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/olaworks/library/EngineProcessor;->isEmptyEngine()Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "face_tracking"

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "shotmode_main_beauty"

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "shotmode_front_beauty"

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_camera_shot_mode"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 585
    :cond_0
    :goto_0
    return-void

    .line 577
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v0, :cond_2

    .line 578
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreview:Lcom/lge/camera/components/OpenGLSurfaceView;

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/OpenGLSurfaceView;->setEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V

    .line 583
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->isReadyEngineProcessor:Z

    goto :goto_0

    .line 580
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, v1, v2}, Lcom/lge/camera/components/CameraPreview;->setEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V

    goto :goto_1
.end method

.method public setLiveEffect(Ljava/lang/String;)V
    .locals 0
    .parameter "effect"

    .prologue
    .line 2573
    return-void
.end method

.method public setLockScreenPreventPreview(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewController;->mLockScreenPreventPreview:Z

    .line 209
    return-void
.end method

.method public setMainButtonVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 2464
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->setMainButtonVisible(Z)V

    .line 2466
    return-void
.end method

.method public setPreviewDisplayLatchCountDown()V
    .locals 1

    .prologue
    .line 558
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 560
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayLatch:Ljava/util/concurrent/CountDownLatch;

    .line 562
    :cond_0
    return-void
.end method

.method public setPreviewing(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1022
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    .line 1023
    return-void
.end method

.method public setPreviousResolution(Ljava/lang/String;)V
    .locals 0
    .parameter "resolution"

    .prologue
    .line 2611
    return-void
.end method

.method public setQuickButtonForcedDisable(Z)V
    .locals 1
    .parameter "set"

    .prologue
    .line 2454
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->setQuickButtonForcedDisable(Z)V

    .line 2455
    return-void
.end method

.method public setQuickButtonMenuEnable(ZZ)V
    .locals 1
    .parameter "enable"
    .parameter "dimByEnable"

    .prologue
    .line 2444
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/ControllerFunction;->setQuickButtonMenuEnable(ZZ)V

    .line 2445
    return-void
.end method

.method public setQuickFunctionAllMenuEnabled(ZZ)V
    .locals 1
    .parameter "enabled"
    .parameter "dimByEnable"

    .prologue
    .line 2432
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1, p2}, Lcom/lge/camera/ControllerFunction;->setQuickFunctionAllMenuEnabled(ZZ)V

    .line 2434
    return-void
.end method

.method public setRendered(Z)V
    .locals 0
    .parameter "render"

    .prologue
    .line 1623
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    .line 1624
    return-void
.end method

.method public setSmartZoomFocusViewPosition(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2589
    return-void
.end method

.method public setStartPreviewOnGoing(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1026
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 1027
    return-void
.end method

.method public setSwitcherVisible(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 2470
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->setSwitcherVisible(Z)V

    .line 2472
    return-void
.end method

.method public setThumbnailButtonVisibility(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 2476
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, p1}, Lcom/lge/camera/ControllerFunction;->setThumbnailButtonVisibility(I)V

    .line 2478
    return-void
.end method

.method public setupHolder(Z)V
    .locals 4
    .parameter "bRender"

    .prologue
    .line 1600
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setupHolder(): bRender = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    iput-boolean p1, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    .line 1603
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v1}, Lcom/lge/camera/components/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1617
    :cond_0
    :goto_0
    return-void

    .line 1610
    :cond_1
    const/4 v0, 0x0

    .line 1611
    .local v0, holder:Landroid/view/SurfaceHolder;
    if-eqz p1, :cond_2

    .line 1612
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraGLPreviewExtra:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 1616
    :goto_1
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0

    .line 1614
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v1}, Lcom/lge/camera/components/CameraPreview;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    goto :goto_1
.end method

.method public show()V
    .locals 8

    .prologue
    const v7, 0x7f090140

    const v6, 0x7f09013f

    const v5, 0x7f09013e

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1535
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_camera_shot_mode"

    const-string v2, "shotmode_free_panorama"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->checkSettingValue(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showFreePanoramaBlackBg()V

    .line 1539
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const v1, 0x7f09013d

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1541
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->bRendered:Z

    if-eqz v0, :cond_1

    .line 1542
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1543
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1544
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1550
    :goto_0
    return-void

    .line 1546
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v5}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1547
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v6}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1548
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v7}, Lcom/lge/camera/ControllerFunction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showQuickWindowCamera(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/16 v2, 0x64

    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1798
    if-eqz p1, :cond_1

    .line 1799
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideIndicatorController()V

    .line 1800
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->setModeMenuVisibility(I)V

    .line 1801
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hidePreviewPanelController()V

    .line 1802
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->clearSubMenu()V

    .line 1803
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2, v1, v3}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 1804
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setModeMenuVisibility(I)V

    .line 1805
    const-string v0, "manual"

    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v2, "key_focus"

    invoke-interface {v1, v2}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1807
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_focus"

    const-string v2, "multiwindowaf"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1809
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 1810
    iput-boolean v4, p0, Lcom/lge/camera/controller/PreviewController;->mChangedManualFocusToDefault:Z

    .line 1826
    :cond_0
    :goto_0
    return-void

    .line 1813
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showIndicatorController()V

    .line 1814
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/ControllerFunction;->setModeMenuVisibility(I)V

    .line 1815
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->updateModeMenuIndicator()V

    .line 1816
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->showPreviewPanelController()V

    .line 1817
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->hideFocus()Z

    .line 1818
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v4}, Lcom/lge/camera/ControllerFunction;->showQuickMenuEnteringGuide(Z)V

    .line 1819
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0, v2, v3, v3}, Lcom/lge/camera/ControllerFunction;->setQuickButtonVisible(IIZ)V

    .line 1820
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mChangedManualFocusToDefault:Z

    if-eqz v0, :cond_0

    .line 1821
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "key_focus"

    const-string v2, "manual"

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1822
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v1, "com.lge.camera.command.setting.SetCameraFocusMode"

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;)V

    .line 1823
    iput-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->mChangedManualFocusToDefault:Z

    goto :goto_0
.end method

.method public showSmartZoomFocusView()V
    .locals 0

    .prologue
    .line 2587
    return-void
.end method

.method public showSubWindowResizeHandler(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2585
    return-void
.end method

.method public startFaceDetectionFromHal()V
    .locals 3

    .prologue
    .line 2354
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mFaceDetectionStarted:Z

    if-eqz v0, :cond_1

    .line 2370
    :cond_0
    :goto_0
    return-void

    .line 2357
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2358
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[HAL FACE] getMaxNumDetectedFaces : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 2360
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    new-instance v1, Lcom/lge/camera/controller/PreviewController$20;

    invoke-direct {v1, p0}, Lcom/lge/camera/controller/PreviewController$20;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2366
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startFaceDetection()V

    .line 2367
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mFaceDetectionStarted:Z

    goto :goto_0
.end method

.method public startPIPFrameSubMenuRotation(I)V
    .locals 0
    .parameter "degree"

    .prologue
    .line 2614
    return-void
.end method

.method public declared-synchronized startPreview(Landroid/hardware/Camera$Parameters;Z)V
    .locals 13
    .parameter "parameter"
    .parameter "useCallback"

    .prologue
    .line 212
    monitor-enter p0

    :try_start_0
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "# startpreview [start] : , mPreviewing = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mStartPreviewOnGoing = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 216
    :cond_0
    const-string v9, "CameraApp"

    const-string v10, "startPreview()- ongoing finish"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    :goto_0
    monitor-exit p0

    return-void

    .line 220
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/lge/camera/util/Common;->isScreenLocked()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 221
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startpreview return, isScreenLock="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/lge/camera/util/Common;->isScreenLocked()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 223
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/lge/camera/controller/PreviewController;->mLockScreenPreventPreview:Z

    .line 224
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "com.lge.camera.command.StartPreview"

    const-wide/16 v11, 0xc8

    invoke-interface {v9, v10, v11, v12}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 212
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 227
    :cond_2
    const/4 v9, 0x0

    :try_start_2
    iput-boolean v9, p0, Lcom/lge/camera/controller/PreviewController;->mLockScreenPreventPreview:Z

    .line 229
    iget-boolean v9, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    if-eqz v9, :cond_3

    .line 230
    const-string v9, "CameraApp"

    const-string v10, "startPreview()- ongoing return"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 236
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startPreview()-start mStartPreviewOnGoing="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",mEffectType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",mEffectParameter="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startPreview(): parameter = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", useCallback = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "shotmode_main_beauty"

    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "key_camera_shot_mode"

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "shotmode_front_beauty"

    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "key_camera_shot_mode"

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 246
    :cond_4
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getFaceBeauty()Lcom/lge/olaworks/library/FaceBeauty;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->swapPreviewEffect(Lcom/lge/olaworks/library/BaseEngine;)V

    .line 249
    :cond_5
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/lge/camera/controller/PreviewController;->isReadyEngineProcessor:Z

    .line 251
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getCameraMode()I

    move-result v9

    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v10

    if-eq v9, v10, :cond_6

    .line 252
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v9

    iput v9, p0, Lcom/lge/camera/controller/PreviewController;->mCameraMode:I

    .line 253
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startPreview mCameraMode ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/lge/camera/controller/PreviewController;->mCameraMode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] getCameraId() ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v11}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->closeCamera()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    :cond_6
    :try_start_3
    invoke-direct {p0}, Lcom/lge/camera/controller/PreviewController;->ensureCameraDevice()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/lge/camera/util/CameraHardwareException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 273
    :goto_1
    :try_start_4
    iget-boolean v9, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    if-eqz v9, :cond_7

    .line 274
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 277
    :cond_7
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 278
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getCameraId()I

    move-result v10

    iget-object v11, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-static {v9, v10, v11}, Lcom/lge/camera/controller/PreviewController;->setCameraDisplayOrientation(Landroid/app/Activity;ILandroid/hardware/Camera;)V

    .line 279
    const/4 v5, 0x0

    .line 282
    .local v5, params:Landroid/hardware/Camera$Parameters;
    if-eqz p1, :cond_9

    .line 283
    move-object v5, p1

    .line 295
    :goto_2
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 296
    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->isAutoExposureLockSupported()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->isAutoWhiteBalanceLockSupported()Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v9, 0x1

    :goto_3
    iput-boolean v9, p0, Lcom/lge/camera/controller/PreviewController;->mIsSensorSupportBackdropper:Z

    .line 299
    :cond_8
    iget-boolean v9, p0, Lcom/lge/camera/controller/PreviewController;->mCameraReleaseOnGoing:Z

    if-eqz v9, :cond_b

    .line 300
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    goto/16 :goto_0

    .line 259
    .end local v5           #params:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v3

    .line 260
    .local v3, e:Lcom/lge/camera/util/CameraHardwareException;
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewFail:Z

    .line 261
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v10, Lcom/lge/camera/controller/PreviewController$1;

    invoke-direct {v10, p0}, Lcom/lge/camera/controller/PreviewController$1;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 267
    const-string v9, "CameraApp"

    const-string v10, "CameraHardwareException : "

    invoke-static {v9, v10, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 268
    .end local v3           #e:Lcom/lge/camera/util/CameraHardwareException;
    :catch_1
    move-exception v3

    .line 269
    .local v3, e:Ljava/lang/Exception;
    const-string v9, "CameraApp"

    const-string v10, "Exception occured in ensureCameraDevice()"

    invoke-static {v9, v10, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 285
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v5       #params:Landroid/hardware/Camera$Parameters;
    :cond_9
    :try_start_5
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v9}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v5

    goto :goto_2

    .line 287
    :catch_2
    move-exception v3

    .line 288
    .restart local v3       #e:Ljava/lang/Exception;
    :try_start_6
    const-string v9, "CameraApp"

    const-string v10, "startPreview getParameters Exception"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 290
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    goto/16 :goto_0

    .line 296
    .end local v3           #e:Ljava/lang/Exception;
    :cond_a
    const/4 v9, 0x0

    goto :goto_3

    .line 304
    :cond_b
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "com.lge.camera.command.setting.ApplyAllSettings"

    invoke-interface {v9, v10, v5}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 305
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->effectsCamcorderActive()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 306
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->setLiveeffectLimit()Ljava/lang/String;

    .line 311
    :cond_c
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isPlayRingMode()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-boolean v9, p0, Lcom/lge/camera/controller/PreviewController;->isPlayRingVideoSizeSet:Z

    if-nez v9, :cond_e

    .line 312
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_preview_size_on_device"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getSettingListPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v7

    .line 313
    .local v7, pref:Lcom/lge/camera/setting/ListPreference;
    const-string v6, "640x480"

    .line 314
    .local v6, playRingResolution:Ljava/lang/String;
    if-eqz v7, :cond_d

    .line 315
    const-string v9, "640x480"

    invoke-virtual {v7, v9}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1d

    .line 316
    const-string v6, "640x480"

    .line 324
    :goto_4
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_preview_size_on_device"

    invoke-interface {v9, v10, v6}, Lcom/lge/camera/ControllerFunction;->setSetting(Ljava/lang/String;Ljava/lang/String;)Z

    .line 325
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-virtual {v7}, Lcom/lge/camera/setting/ListPreference;->getEntryCommand()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10, v5}, Lcom/lge/camera/ControllerFunction;->doCommand(Ljava/lang/String;Ljava/lang/Object;)V

    .line 327
    :cond_d
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/lge/camera/controller/PreviewController;->isPlayRingVideoSizeSet:Z

    .line 330
    .end local v6           #playRingResolution:Ljava/lang/String;
    .end local v7           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_e
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 333
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_20

    .line 334
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    if-nez v9, :cond_f

    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/util/CameraHolder;->getOneShotSetPreviewNull()Ljava/util/concurrent/CountDownLatch;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 336
    const-string v9, "CameraApp"

    const-string v10, "startPreview creates EffectsRecorder"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    new-instance v9, Lcom/lge/camera/EffectsRecorder;

    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/lge/camera/EffectsRecorder;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsRecorder:Lcom/lge/camera/EffectsRecorder;

    .line 338
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/util/CameraHolder;->setOneShotSetPreviewNullLatchCountDown()V

    .line 349
    :cond_f
    :goto_5
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isCafSupported()Z

    move-result v9

    if-eqz v9, :cond_27

    .line 350
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_21

    .line 351
    const-string v9, "continuous-video"

    invoke-virtual {v5, v9}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 352
    const-string v9, "CameraApp"

    const-string v10, "### setFocusMode-conti"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_10
    :goto_6
    const-string v9, "lge-camera"

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 396
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_camera_shot_mode"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 397
    .local v8, shotMode:Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v9

    if-nez v9, :cond_14

    .line 398
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isZslSupported()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 399
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v10, "key_scene_mode"

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 402
    .local v1, currentSceneMode:Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v9

    if-eqz v9, :cond_28

    .line 403
    const-string v9, "CameraApp"

    const-string v10, "#### Set ZSL on if camera shot mode is Time machine."

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v9, "zsl"

    const-string v10, "on"

    invoke-virtual {v5, v9, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .end local v1           #currentSceneMode:Ljava/lang/String;
    :cond_11
    :goto_7
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isMTKChipset()Z

    move-result v9

    if-eqz v9, :cond_12

    .line 452
    const-string v9, "CameraApp"

    const-string v10, "#### param set cam-mode : 1"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    const-string v9, "cam-mode"

    const/4 v10, 0x1

    invoke-virtual {v5, v9, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 456
    :cond_12
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVideoStabilizationSupported()Z

    move-result v9

    if-eqz v9, :cond_13

    .line 457
    const-string v9, "CameraApp"

    const-string v10, "param set video-stabilization false"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    const-string v9, "video-stabilization"

    const-string v10, "false"

    invoke-virtual {v5, v9, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :cond_13
    const-string v9, "shotmode_main_beauty"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_34

    .line 462
    const-string v9, "CameraApp"

    const-string v10, "param set beauty-shot on"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v9, "beauty-shot"

    const-string v10, "on"

    invoke-virtual {v5, v9, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 472
    :cond_14
    :goto_8
    :try_start_7
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Time Info][4] App Camera Param setting End : Camera Parameter setting "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v11}, Lcom/lge/camera/util/Common;->interimCheckTime(Z)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Time Info][5] Device Param setting Start : Device setting "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/lge/camera/util/Common;->interimCheckTime(Z)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v9, v5}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 475
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Time Info][5] Device Param setting End : Device setting "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v11}, Lcom/lge/camera/util/Common;->interimCheckTime(Z)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 481
    :goto_9
    :try_start_8
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p0, v9}, Lcom/lge/camera/controller/PreviewController;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 483
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v9, :cond_15

    .line 484
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v10, p0, Lcom/lge/camera/controller/PreviewController;->mErrorCallback:Lcom/lge/camera/controller/PreviewController$CameraErrorCallback;

    invoke-virtual {v9, v10}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 486
    :cond_15
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/lge/camera/controller/PreviewController;->mBeginStartPreview:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 489
    :try_start_9
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v9, :cond_1b

    .line 490
    if-eqz p2, :cond_16

    .line 491
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    iget-object v10, p0, Lcom/lge/camera/controller/PreviewController;->mOneShotPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v9, v10}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 493
    :cond_16
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[Time Info][6] Device StartPreview Start : Camera Driver Preview Operation "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/lge/camera/util/Common;->interimCheckTime(Z)J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    sget-boolean v9, Lcom/lge/camera/properties/ProjectVariables;->bEnterSetting:Z

    if-eqz v9, :cond_17

    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v9, :cond_17

    .line 496
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayLatch:Ljava/util/concurrent/CountDownLatch;

    .line 497
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v10, 0x1f4

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v9, v10, v11, v12}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 499
    :cond_17
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->isDualCameraActive()Z

    move-result v9

    if-nez v9, :cond_18

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->effectsCamcorderActive()Z

    move-result v9

    if-nez v9, :cond_18

    .line 500
    const-string v9, "CameraApp"

    const-string v10, "##### TIME_CHECK startPreview-start"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v9}, Landroid/hardware/Camera;->startPreview()V

    .line 502
    const-string v9, "CameraApp"

    const-string v10, "##### TIME_CHECK startPreview-end"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_18
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_35

    .line 505
    const-string v0, ""

    .line 506
    .local v0, currentPreviewSizeOnScreen:Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    if-eqz v9, :cond_19

    .line 507
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v10}, Lcom/lge/camera/components/CameraPreview;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v10}, Lcom/lge/camera/components/CameraPreview;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    :cond_19
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v9

    if-nez v9, :cond_1a

    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isSmartZoomRecordingActive()Z

    move-result v9

    if-nez v9, :cond_1a

    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isLiveEffectActive()Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 513
    :cond_1a
    const-string v9, "CameraApp"

    const-string v10, "startPreviewEffect() is called in *startPreview()* for dual recording"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->startPreviewEffect()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    .line 547
    .end local v0           #currentPreviewSizeOnScreen:Ljava/lang/String;
    :cond_1b
    :goto_a
    const/4 v9, 0x0

    :try_start_a
    iput-boolean v9, p0, Lcom/lge/camera/controller/PreviewController;->mBeginStartPreview:Z

    .line 548
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    .line 550
    if-nez p2, :cond_1c

    .line 551
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewCallbackRunnable:Ljava/lang/Runnable;

    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    .line 554
    :cond_1c
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startPreview()-end mStartPreviewOnGoing ="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 317
    .end local v8           #shotMode:Ljava/lang/String;
    .restart local v6       #playRingResolution:Ljava/lang/String;
    .restart local v7       #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_1d
    const-string v9, "720x480"

    invoke-virtual {v7, v9}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1e

    .line 318
    const-string v6, "720x480"

    goto/16 :goto_4

    .line 319
    :cond_1e
    const-string v9, "1280x720"

    invoke-virtual {v7, v9}, Lcom/lge/camera/setting/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1f

    .line 320
    const-string v6, "1280x720"

    goto/16 :goto_4

    .line 322
    :cond_1f
    invoke-virtual {v7}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4

    .line 341
    .end local v6           #playRingResolution:Ljava/lang/String;
    .end local v7           #pref:Lcom/lge/camera/setting/ListPreference;
    :cond_20
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    if-nez v9, :cond_f

    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/util/CameraHolder;->getOneShotSetPreviewNull()Ljava/util/concurrent/CountDownLatch;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 343
    const-string v9, "CameraApp"

    const-string v10, "startPreview creates EffectsCamera"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance v9, Lcom/lge/camera/EffectsCamera;

    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/lge/camera/EffectsCamera;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mEffectsCamera:Lcom/lge/camera/EffectsCamera;

    .line 345
    invoke-static {}, Lcom/lge/camera/util/CameraHolder;->instance()Lcom/lge/camera/util/CameraHolder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lge/camera/util/CameraHolder;->setOneShotSetPreviewNullLatchCountDown()V

    goto/16 :goto_5

    .line 354
    :cond_21
    const-string v9, "manual"

    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "key_focus"

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_26

    .line 355
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isShutterButtonLongKey()Z

    move-result v9

    if-nez v9, :cond_25

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v9

    if-eqz v9, :cond_25

    .line 357
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportAFonCAF()Z

    move-result v9

    if-eqz v9, :cond_22

    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isAutoFocusNullSettingNeededInStartPreview()Z

    move-result v9

    if-eqz v9, :cond_22

    .line 360
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 361
    const-string v9, "CameraApp"

    const-string v10, "###getCameraDevice().autoFocus(null)"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_22
    const-string v9, "continuous-picture"

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_23

    const-string v9, "mw_continuous-picture"

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 365
    :cond_23
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v9

    invoke-virtual {v9}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 366
    const-string v9, "CameraApp"

    const-string v10, "###mCameraDevice.cancelAutoFocus()"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_24
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9, v5}, Lcom/lge/camera/ControllerFunction;->getDefaultFocusModeParameterForMultiWindowAF(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v2

    .line 371
    .local v2, defaultFocusMode:Ljava/lang/String;
    invoke-virtual {v5, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 372
    const-string v9, "CameraApp"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "### setFocusMode-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 375
    .end local v2           #defaultFocusMode:Ljava/lang/String;
    :cond_25
    const-string v9, "auto"

    invoke-virtual {v5, v9}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 376
    const-string v9, "CameraApp"

    const-string v10, "### setFocusMode-auto"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 378
    :cond_26
    const-string v9, "manual"

    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "key_focus"

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 380
    const-string v9, "normal"

    invoke-virtual {v5, v9}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 381
    const-string v9, "manualfocus_step"

    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v10}, Lcom/lge/camera/ControllerFunction;->getManualFocusValue()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 382
    const-string v9, "CameraApp"

    const-string v10, "### setFocusMode-manual"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 386
    :cond_27
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isNVIDIAChipset()Z

    move-result v9

    if-nez v9, :cond_10

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v9

    if-nez v9, :cond_10

    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_10

    .line 389
    const-string v9, "infinity"

    invoke-virtual {v5, v9}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 390
    const-string v9, "CameraApp"

    const-string v10, "### setFocusMode-infinity"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 405
    .restart local v1       #currentSceneMode:Ljava/lang/String;
    .restart local v8       #shotMode:Ljava/lang/String;
    :cond_28
    const-string v9, "shotmode_full_continuous"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 406
    const-string v9, "CameraApp"

    const-string v10, "#### Set ZSL on if camera shot mode is Full frame CONTINUOUS."

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v9

    if-eqz v9, :cond_29

    .line 408
    const-string v9, "CameraApp"

    const-string v10, "#### param set zsl off"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v9, "zsl"

    const-string v10, "off"

    invoke-virtual {v5, v9, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 411
    :cond_29
    const-string v9, "CameraApp"

    const-string v10, "#### param set zsl on"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v9, "zsl"

    const-string v10, "on"

    invoke-virtual {v5, v9, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 414
    :cond_2a
    const-string v9, "shotmode_panorama"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 415
    const-string v9, "CameraApp"

    const-string v10, "#### Set ZSL off if camera shot mode is PANORAMA."

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v9, "zsl"

    const-string v10, "off"

    invoke-virtual {v5, v9, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 417
    :cond_2b
    const-string v9, "shotmode_free_panorama"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 418
    const-string v9, "CameraApp"

    const-string v10, "#### Set ZSL off if camera shot mode is FREE PANORAMA."

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v9, "zsl"

    const-string v10, "off"

    invoke-virtual {v5, v9, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->showFreePanoramaBlackBg()V

    goto/16 :goto_7

    .line 421
    :cond_2c
    const-string v9, "shotmode_hdr"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2d

    const-string v9, "shotmode_continuous"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 423
    :cond_2d
    const-string v9, "CameraApp"

    const-string v10, "#### Set ZSL off if camera shot mode is HDR, CONTINUOUS."

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v9, "zsl"

    const-string v10, "off"

    invoke-virtual {v5, v9, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 425
    :cond_2e
    const-string v9, "shotmode_normal"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2f

    const-string v9, "Smart shutter"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2f

    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isTimeMachineModeOn()Z

    move-result v9

    if-nez v9, :cond_2f

    .line 428
    const-string v9, "CameraApp"

    const-string v10, "#### Set ZSL off if camera shot mode is normal and scene mode is smart shutter."

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v9, "zsl"

    const-string v10, "off"

    invoke-virtual {v5, v9, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 430
    :cond_2f
    const-string v9, "shotmode_clear_shot"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_30

    .line 431
    const-string v9, "CameraApp"

    const-string v10, "#### Set ZSL on if camera shot mode is CLEAR SHOT."

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v9, "zsl"

    const-string v10, "on"

    invoke-virtual {v5, v9, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 433
    :cond_30
    const-string v9, "shotmode_dual_camera"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_31

    .line 434
    const-string v9, "CameraApp"

    const-string v10, "#### Set ZSL off if camera shot mode is DUAL CAMERA."

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v9, "zsl"

    const-string v10, "off"

    invoke-virtual {v5, v9, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 436
    :cond_31
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v9

    if-eqz v9, :cond_32

    const-string v9, "on"

    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "key_smart_mode"

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_32

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v9

    if-nez v9, :cond_32

    .line 439
    const-string v9, "zsl"

    const-string v10, "off"

    invoke-virtual {v5, v9, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 441
    :cond_32
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isNonZSLMode()Z

    move-result v9

    if-eqz v9, :cond_33

    .line 442
    const-string v9, "CameraApp"

    const-string v10, "#### param set zsl off"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v9, "zsl"

    const-string v10, "off"

    invoke-virtual {v5, v9, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 445
    :cond_33
    const-string v9, "CameraApp"

    const-string v10, "#### param set zsl on"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v9, "zsl"

    const-string v10, "on"

    invoke-virtual {v5, v9, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 465
    .end local v1           #currentSceneMode:Ljava/lang/String;
    :cond_34
    const-string v9, "CameraApp"

    const-string v10, "param set beauty-shot off"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v9, "beauty-shot"

    const-string v10, "off"

    invoke-virtual {v5, v9, v10}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 476
    :catch_3
    move-exception v3

    .line 477
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v9, "CameraApp"

    const-string v10, "startPreview setParameters Exception"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_9

    .line 516
    .end local v3           #e:Ljava/lang/Exception;
    :cond_35
    :try_start_b
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v9

    if-nez v9, :cond_1b

    .line 517
    const-string v0, ""

    .line 518
    .restart local v0       #currentPreviewSizeOnScreen:Ljava/lang/String;
    iget-object v9, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    if-eqz v9, :cond_36

    .line 519
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v9}, Lcom/lge/camera/ControllerFunction;->isConfigureLandscape()Z

    move-result v9

    if-eqz v9, :cond_37

    .line 520
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v10}, Lcom/lge/camera/components/CameraPreview;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v10}, Lcom/lge/camera/components/CameraPreview;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 525
    :cond_36
    :goto_b
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getPreviewSizeOnScreen()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_38

    const-string v9, "shotmode_dual_camera"

    iget-object v10, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v11, "key_camera_shot_mode"

    invoke-interface {v10, v11}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_38

    .line 527
    const-string v9, "CameraApp"

    const-string v10, "startPreviewEffect() is called in *startPreview()* for dual camera"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->startPreviewEffect()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    goto/16 :goto_a

    .line 534
    .end local v0           #currentPreviewSizeOnScreen:Ljava/lang/String;
    :catch_4
    move-exception v4

    .line 535
    .local v4, ex:Ljava/lang/Throwable;
    :try_start_c
    const-string v9, "CameraApp"

    const-string v10, "startPreview failed : "

    invoke-static {v9, v10, v4}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 536
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->closeCamera()V

    .line 537
    iget-object v9, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    new-instance v10, Lcom/lge/camera/controller/PreviewController$2;

    invoke-direct {v10, p0}, Lcom/lge/camera/controller/PreviewController$2;-><init>(Lcom/lge/camera/controller/PreviewController;)V

    invoke-interface {v9, v10}, Lcom/lge/camera/ControllerFunction;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    .line 522
    .end local v4           #ex:Ljava/lang/Throwable;
    .restart local v0       #currentPreviewSizeOnScreen:Ljava/lang/String;
    :cond_37
    :try_start_d
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v10}, Lcom/lge/camera/components/CameraPreview;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/lge/camera/controller/PreviewController;->mCameraPreview:Lcom/lge/camera/components/CameraPreview;

    invoke-virtual {v10}, Lcom/lge/camera/components/CameraPreview;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 530
    :cond_38
    const-string v9, "CameraApp"

    const-string v10, "startPreviewEffect() is NOT called in *startPreview()*"

    invoke-static {v9, v10}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_a
.end method

.method public startPreviewEffect()V
    .locals 0

    .prologue
    .line 2537
    return-void
.end method

.method public startPreviewEffect(Lcom/lge/camera/EffectsBase;Z)V
    .locals 3
    .parameter "mEffects"
    .parameter "checkCondition"

    .prologue
    .line 2539
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 2561
    :cond_0
    :goto_0
    return-void

    .line 2545
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mIsStartPreviewEffectOnGoing:Z

    if-eqz v0, :cond_2

    .line 2546
    const-string v0, "CameraApp"

    const-string v1, "startPreviewEffect is OnGoing; Do nothing"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2550
    :cond_2
    if-eqz p2, :cond_0

    .line 2551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mIsStartPreviewEffectOnGoing:Z

    .line 2552
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->readEffectType()I

    move-result v0

    iput v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    .line 2553
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->readEffectParameter()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mEffectParameter:Ljava/lang/Object;

    .line 2554
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->onSetBitmapDoneProcess()V

    .line 2555
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/ControllerFunction;->enableInput(Z)V

    .line 2556
    const-string v0, "CameraApp"

    const-string v1, "enableInput(false) in startPreviewEffect"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2557
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreviewEffect() mEffectType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2558
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->initializeEffectsPreview()V

    .line 2559
    invoke-virtual {p1}, Lcom/lge/camera/EffectsBase;->startPreview()V

    goto :goto_0
.end method

.method public startRecordingEffect()V
    .locals 0

    .prologue
    .line 2604
    return-void
.end method

.method public stopFaceDetectionFromHal()V
    .locals 2

    .prologue
    .line 2373
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2374
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-lez v0, :cond_0

    .line 2375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/controller/PreviewController;->mFaceDetectionStarted:Z

    .line 2376
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V

    .line 2377
    iget-object v0, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopFaceDetection()V

    .line 2380
    :cond_0
    return-void
.end method

.method public declared-synchronized stopPreview()V
    .locals 8

    .prologue
    .line 799
    monitor-enter p0

    :try_start_0
    const-string v5, "CameraApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "StopPreview()-start, mPreviewing="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/mBeginStartPreview="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/lge/camera/controller/PreviewController;->mBeginStartPreview:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/lge/camera/controller/PreviewController;->mBeginStartPreview:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_7

    .line 803
    :try_start_1
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 804
    const/4 v1, 0x0

    .line 805
    .local v1, bWait:Z
    const/4 v0, 0x0

    .line 806
    .local v0, bChangeParameters:Z
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 808
    .local v4, params:Landroid/hardware/Camera$Parameters;
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 809
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v6, "key_flash"

    invoke-interface {v5, v6}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 810
    .local v3, flashSetting:Ljava/lang/String;
    const-string v5, "torch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 811
    const-string v5, "off"

    invoke-virtual {v4, v5}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 812
    const/4 v1, 0x1

    .line 813
    const/4 v0, 0x1

    .line 828
    .end local v3           #flashSetting:Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 829
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5, v4}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 832
    :cond_1
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isOMAP4Chipset()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-eqz v5, :cond_2

    .line 834
    const-wide/16 v5, 0x190

    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 841
    .end local v0           #bChangeParameters:Z
    .end local v1           #bWait:Z
    .end local v4           #params:Landroid/hardware/Camera$Parameters;
    :cond_2
    :goto_0
    :try_start_3
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isRenesasISP()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 842
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/lge/camera/platform/PlatformDevice;->setISPDataCallbackMode(Landroid/hardware/Camera;Landroid/hardware/Camera$CameraDataCallback;)V

    .line 852
    :cond_3
    :goto_1
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->beSupportMoveCallbackFromSensor()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 853
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->unregisterCAFCallback()V

    .line 856
    :cond_4
    const-string v5, "CameraApp"

    const-string v6, "### mCameraDevice.stopPreview()"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 858
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 859
    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isDualRecordingActive()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isDualCameraActive()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 860
    :cond_5
    invoke-static {}, Lcom/lge/camera/platform/PlatformDevice;->DualRec_stopPIPPreview()V

    .line 862
    :cond_6
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v5}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 867
    :cond_7
    :goto_2
    const/4 v5, 0x0

    :try_start_4
    iput-boolean v5, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    .line 868
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lge/camera/controller/PreviewController;->mBeginStartPreview:Z

    .line 869
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    .line 870
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lge/camera/controller/PreviewController;->mSetPreviewDisplayCheck:Z

    .line 871
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lge/camera/controller/PreviewController;->mFaceDetectionStarted:Z

    .line 872
    const-string v5, "CameraApp"

    const-string v6, "stopPreview()-end"

    invoke-static {v5, v6}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 873
    monitor-exit p0

    return-void

    .line 835
    .restart local v0       #bChangeParameters:Z
    .restart local v1       #bWait:Z
    .restart local v4       #params:Landroid/hardware/Camera$Parameters;
    :catch_0
    move-exception v2

    .line 836
    .local v2, e:Ljava/lang/InterruptedException;
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 863
    .end local v0           #bChangeParameters:Z
    .end local v1           #bWait:Z
    .end local v2           #e:Ljava/lang/InterruptedException;
    .end local v4           #params:Landroid/hardware/Camera$Parameters;
    :catch_1
    move-exception v2

    .line 864
    .local v2, e:Ljava/lang/Exception;
    :try_start_6
    const-string v5, "CameraApp"

    const-string v6, "Warn: stopPreview() : "

    invoke-static {v5, v6, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 799
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 844
    :cond_8
    :try_start_7
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportSmartMode()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 845
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/lge/camera/platform/PlatformDevice;->setISPDataCallbackMode(Landroid/hardware/Camera;Landroid/hardware/Camera$CameraDataCallback;)V

    .line 847
    :cond_9
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isSupportObjectTracking()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 848
    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/lge/camera/platform/PlatformDevice;->setOBTDataCallbackMode(Landroid/hardware/Camera;Landroid/hardware/Camera$CameraDataCallback;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method

.method public stopPreviewEffect()V
    .locals 0

    .prologue
    .line 2562
    return-void
.end method

.method public stopPreviewEffect(Lcom/lge/camera/EffectsBase;)V
    .locals 2
    .parameter "mEffects"

    .prologue
    .line 2564
    if-eqz p1, :cond_0

    .line 2565
    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/lge/camera/EffectsBase;->stopPreview(I)V

    .line 2566
    const-string v0, "CameraApp"

    const-string v1, "stopPreviewEffect"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2568
    :cond_0
    return-void
.end method

.method public stopPreviewForMediatorOnPause()V
    .locals 2

    .prologue
    .line 2280
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2281
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getCameraGLPreview()Lcom/lge/camera/components/OpenGLSurfaceView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/OpenGLSurfaceView;->setActivityPausing(Z)V

    .line 2283
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->isChangingToOtherActivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2284
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->waitStartPreviewThreadDone()V

    .line 2285
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->isPreviewing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2286
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 2289
    :cond_1
    return-void
.end method

.method public stopRecordingEffect()V
    .locals 0

    .prologue
    .line 2606
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 8
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 606
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->checkMediator()Z

    move-result v3

    if-nez v3, :cond_0

    .line 743
    :goto_0
    :pswitch_0
    return-void

    .line 610
    :cond_0
    const-string v3, "CameraApp"

    const-string v4, "#### surfaceChanged %dx%d, mode:%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->getApplicationModeString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iput p3, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceWidth:I

    .line 612
    iput p4, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHeight:I

    .line 614
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    if-nez v3, :cond_1

    .line 615
    const-string v3, "CameraApp"

    const-string v4, "surfaceChanged return"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    const-string v3, "CameraApp"

    const-string v4, "holder.getSurface() == null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 620
    :cond_1
    iput-object p1, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 621
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 622
    :cond_2
    const-string v3, "CameraApp"

    const-string v4, "surfaceChanged return"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v3, "CameraApp"

    const-string v4, "mCameraDevice:%s pausing:%b finishing:%b"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/lge/camera/controller/PreviewController;->mCameraDevice:Landroid/hardware/Camera;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isPausing()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v7}, Lcom/lge/camera/ControllerFunction;->isFinishingActivity()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 628
    :cond_3
    const-string v3, "CameraApp"

    const-string v4, "mPreviewing:%b holder.isCreating():%b mStartPreviewOnGoing:%b"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/lge/camera/controller/PreviewController;->mPreviewing:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-boolean v7, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewOnGoing:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    :try_start_0
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 634
    invoke-direct {p0, p1}, Lcom/lge/camera/controller/PreviewController;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 636
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->setPreviewDisplayLatchCountDown()V

    .line 638
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->effectsCamcorderActive()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 639
    iget-object v3, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 640
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "key_preview_size_on_device"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->findPreference(Ljava/lang/String;)Lcom/lge/camera/setting/ListPreference;

    move-result-object v2

    .line 641
    .local v2, videoSizePref:Lcom/lge/camera/setting/ListPreference;
    if-eqz v2, :cond_6

    .line 642
    invoke-virtual {v2}, Lcom/lge/camera/setting/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    .line 643
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backup previous resolution:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/PreviewController;->previousResolution:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v3, "CameraApp"

    const-string v4, "set to live effect limit"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->setLiveeffectLimit()Ljava/lang/String;

    .line 651
    .end local v2           #videoSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_4
    :goto_1
    const-string v3, "CameraApp"

    const-string v4, "startPreviewEffect is called in *surfaceChanged*"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->startPreviewEffect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->updateNavigationBarShape()V

    goto/16 :goto_0

    .line 648
    .restart local v2       #videoSizePref:Lcom/lge/camera/setting/ListPreference;
    :cond_6
    :try_start_1
    const-string v3, "CameraApp"

    const-string v4, "videoSizePref is null"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 735
    .end local v2           #videoSizePref:Lcom/lge/camera/setting/ListPreference;
    :catch_0
    move-exception v0

    .line 736
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "CameraApp"

    const-string v4, "surfaceChanged Exception:"

    invoke-static {v3, v4, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 737
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 738
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/lge/camera/controller/PreviewController;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 739
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.DisplayPreview"

    const-wide/16 v5, 0x3e8

    invoke-interface {v3, v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    goto :goto_2

    .line 653
    .end local v0           #e:Ljava/lang/Exception;
    :cond_7
    :try_start_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->effectsCameraActive()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 654
    const-string v3, "shotmode_main_beauty"

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getPreviousShotModeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "shotmode_front_beauty"

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getPreviousShotModeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 658
    :cond_8
    const-string v3, "CameraApp"

    const-string v4, "Because previous shot mode is beauty shot, so startPreview is not called in surfaceChanged"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 663
    :cond_9
    const-string v3, "CameraApp"

    const-string v4, "startPreviewEffect is called in *surfaceChanged*"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->startPreviewEffect()V

    goto :goto_2

    .line 672
    :cond_a
    iget-boolean v3, p0, Lcom/lge/camera/controller/PreviewController;->mLockScreenPreventPreview:Z

    if-nez v3, :cond_15

    .line 673
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    .line 674
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 722
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->effectsCamcorderActive()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->effectsCameraActive()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 723
    :cond_c
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startPreviewEffect is called in *surfaceChanged()* mEffectType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/lge/camera/controller/PreviewController;->mEffectType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->startPreviewEffect()V

    goto/16 :goto_2

    .line 681
    :pswitch_1
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->setVideoState(I)V

    .line 682
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->stopRecordingByPausing()V

    goto :goto_3

    .line 686
    :pswitch_2
    const-string v3, "CameraApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isStopRecordingByMountedAction="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v5}, Lcom/lge/camera/ControllerFunction;->isStopRecordingByMountedAction()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isAttachIntent()Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isMMSIntent()Z

    move-result v3

    if-eqz v3, :cond_e

    :cond_d
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isStopRecordingByMountedAction()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 689
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->setVideoStateOnly(I)V

    .line 690
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.DisplayCamcorderPostview"

    const-wide/16 v5, 0x3e8

    invoke-interface {v3, v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 692
    :cond_e
    const-string v3, "off"

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_video_auto_review"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "not found"

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v5, "key_video_auto_review"

    invoke-interface {v4, v5}, Lcom/lge/camera/ControllerFunction;->getSettingValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 694
    :cond_f
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/camera/util/SharedPreferenceUtil;->getLastVideoUri(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 695
    .local v1, strUri:Ljava/lang/String;
    if-eqz v1, :cond_10

    .line 696
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/lge/camera/ControllerFunction;->setLastThumb(Landroid/net/Uri;Z)V

    .line 698
    :cond_10
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.OnDelayOff"

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->doCommandUi(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 700
    .end local v1           #strUri:Ljava/lang/String;
    :cond_11
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->setVideoStateOnly(I)V

    .line 701
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const-string v4, "com.lge.camera.command.DisplayCamcorderPostview"

    const-wide/16 v5, 0x3e8

    invoke-interface {v3, v4, v5, v6}, Lcom/lge/camera/ControllerFunction;->doCommandDelayed(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 710
    :cond_12
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->isPanoramaStarted()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 711
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->stopPanorama()V

    .line 712
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/lge/camera/ControllerFunction;->playRecordingSound(Z)V

    goto/16 :goto_0

    .line 715
    :cond_13
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->getFreePanoramaStatus()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_b

    .line 716
    iget-object v3, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v3}, Lcom/lge/camera/ControllerFunction;->stopFreePanorama()V

    goto/16 :goto_0

    .line 726
    :cond_14
    const-string v3, "CameraApp"

    const-string v4, "startPreview - *surfaceChanged()*"

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/lge/camera/controller/PreviewController;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    goto/16 :goto_2

    .line 731
    :cond_15
    const-string v3, "CameraApp"

    const-string v4, "lockScreen:%b"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/lge/camera/controller/PreviewController;->mLockScreenPreventPreview:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const-string v3, "CameraApp"

    const-string v4, "Not start preview in surfaceChanged()"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 674
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    .line 746
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 750
    :goto_0
    return-void

    .line 749
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "#### surfaceCreated, mode:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationModeString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 5
    .parameter "holder"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 753
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->checkMediator()Z

    move-result v0

    if-nez v0, :cond_0

    .line 765
    :goto_0
    return-void

    .line 756
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getApplicationMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v0}, Lcom/lge/camera/ControllerFunction;->getVideoState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 758
    :cond_1
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 759
    const-string v0, "CameraApp"

    const-string v1, "To prevent mCameraDevice.stopPreview() before MediaRecorder.stop()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 762
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->stopPreview()V

    .line 763
    iput-object v3, p0, Lcom/lge/camera/controller/PreviewController;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 764
    const-string v0, "CameraApp"

    const-string v1, "##### surfaceDestroyed, mode:%s"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v4}, Lcom/lge/camera/ControllerFunction;->getApplicationModeString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public swapPreviewEffect(Lcom/lge/olaworks/library/BaseEngine;)V
    .locals 3
    .parameter "engine"

    .prologue
    .line 1626
    if-eqz p1, :cond_0

    .line 1627
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "swapPreviewEffect engine.needRenderMode() ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lge/olaworks/library/BaseEngine;->needRenderMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    :cond_0
    if-nez p1, :cond_2

    .line 1630
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->setupHolder(Z)V

    .line 1640
    :cond_1
    :goto_0
    return-void

    .line 1632
    :cond_2
    invoke-virtual {p1}, Lcom/lge/olaworks/library/BaseEngine;->needRenderMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1633
    invoke-virtual {p1}, Lcom/lge/olaworks/library/BaseEngine;->needRenderMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->setupHolder(Z)V

    .line 1634
    invoke-virtual {p0}, Lcom/lge/camera/controller/PreviewController;->getEngineProcessor()Lcom/lge/olaworks/library/EngineProcessor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lge/olaworks/library/EngineProcessor;->setEngine(Lcom/lge/olaworks/library/BaseEngine;)Lcom/lge/olaworks/library/BaseEngine;

    .line 1635
    const-string v0, "CameraApp"

    const-string v1, "swapPreviewEffect setEngine"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1636
    :cond_3
    invoke-virtual {p1}, Lcom/lge/olaworks/library/BaseEngine;->needRenderMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1637
    invoke-virtual {p1}, Lcom/lge/olaworks/library/BaseEngine;->needRenderMode()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/lge/camera/controller/PreviewController;->setupHolder(Z)V

    goto :goto_0
.end method

.method public updateEffectSelection()Z
    .locals 1

    .prologue
    .line 2576
    const/4 v0, 0x1

    return v0
.end method

.method public waitStartPreviewThreadDone()V
    .locals 4

    .prologue
    .line 1517
    :try_start_0
    iget-object v1, p0, Lcom/lge/camera/controller/Controller;->mGet:Lcom/lge/camera/ControllerFunction;

    invoke-interface {v1}, Lcom/lge/camera/ControllerFunction;->isErrorOccuredAndFinish()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1518
    const-string v2, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We don\'t wait this case that mErrorOccuredAndFinish is true, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1520
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1522
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    .line 1532
    :cond_1
    :goto_1
    return-void

    .line 1518
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1524
    :cond_3
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1525
    iget-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V

    .line 1526
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lge/camera/controller/PreviewController;->mStartPreviewThread:Ljava/lang/Thread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1529
    :catch_0
    move-exception v0

    .line 1530
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "CameraApp"

    const-string v2, "Failed to join startPreview thread!"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public waitStopRecordingEffectThreadDone()V
    .locals 0

    .prologue
    .line 2607
    return-void
.end method
