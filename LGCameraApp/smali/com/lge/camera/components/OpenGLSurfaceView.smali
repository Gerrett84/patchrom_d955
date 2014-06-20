.class public Lcom/lge/camera/components/OpenGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "OpenGLSurfaceView.java"

# interfaces
.implements Lcom/lge/camera/components/ProcessorThread$FrameCallback;
.implements Lcom/lge/camera/components/OpenGLYUVRenderer$RendererAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;,
        Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;
    }
.end annotation


# static fields
.field protected static final MAX_PREVIEW_BUFFER:I = 0x2

.field protected static final PRINT_FUNC_PROFILING:Z = false

.field private static final USE_THREAD:Z = true


# instance fields
.field private isPause:Z

.field protected mCameraDevice:Landroid/hardware/Camera;

.field protected mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

.field protected mFlipH:Z

.field private mIsCompleteFrame:Z

.field private mListener:Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;

.field protected mOrientation:I

.field protected mOrientationFlip:I

.field private mPreviewCallback:Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;

.field private mPreviewCallbackBuffer:[B

.field private mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

.field protected mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

.field private mThread:Lcom/lge/camera/components/ProcessorThread;

.field private previewH:I

.field private previewW:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mCameraDevice:Landroid/hardware/Camera;

    .line 38
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallback:Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;

    .line 39
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    .line 40
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 41
    iput-boolean v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mFlipH:Z

    .line 42
    iput v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    .line 43
    iput v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mIsCompleteFrame:Z

    .line 47
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 49
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallbackBuffer:[B

    .line 50
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mListener:Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;

    .line 283
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    .line 359
    iput-boolean v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->isPause:Z

    .line 58
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/OpenGLSurfaceView;->setDebugFlags(I)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/OpenGLSurfaceView;->createOpenGLYUVRenderer(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mCameraDevice:Landroid/hardware/Camera;

    .line 38
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallback:Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;

    .line 39
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    .line 40
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 41
    iput-boolean v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mFlipH:Z

    .line 42
    iput v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    .line 43
    iput v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mIsCompleteFrame:Z

    .line 47
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 49
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallbackBuffer:[B

    .line 50
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mListener:Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;

    .line 283
    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    .line 359
    iput-boolean v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->isPause:Z

    .line 64
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/OpenGLSurfaceView;->createOpenGLYUVRenderer(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method private detectOpenGLES20(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 105
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 106
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 108
    .local v1, info:Landroid/content/pm/ConfigurationInfo;
    if-nez v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v2

    :cond_1
    iget v3, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v4, 0x2

    if-lt v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private startProcessorThread()V
    .locals 4

    .prologue
    .line 285
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    if-nez v2, :cond_0

    .line 286
    new-instance v2, Lcom/lge/camera/components/ProcessorThread;

    invoke-direct {v2, p0}, Lcom/lge/camera/components/ProcessorThread;-><init>(Lcom/lge/camera/components/ProcessorThread$FrameCallback;)V

    iput-object v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    .line 287
    invoke-static {}, Lcom/lge/camera/properties/FunctionProperties;->isVoiceShutter()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x5

    .line 290
    .local v1, priority:I
    :goto_0
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v2, v1}, Lcom/lge/camera/components/ProcessorThread;->setPriority(I)V

    .line 292
    .end local v1           #priority:I
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/lge/camera/components/ProcessorThread;->setCompleteFrame(Z)V

    .line 294
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v2}, Lcom/lge/camera/components/ProcessorThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 296
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v2}, Lcom/lge/camera/components/ProcessorThread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :cond_1
    :goto_1
    return-void

    .line 287
    :cond_2
    const/16 v1, 0xa

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Ljava/lang/IllegalThreadStateException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    .line 299
    invoke-direct {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->startProcessorThread()V

    goto :goto_1
.end method

.method private stopProcessorThread()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    if-nez v0, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v0}, Lcom/lge/camera/components/ProcessorThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    const-string v0, "CameraApp"

    const-string v1, "stopPreviewRender(): Thread interrupted!!"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v0}, Lcom/lge/camera/components/ProcessorThread;->interrupt()V

    .line 312
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v0}, Lcom/lge/camera/components/ProcessorThread;->finish()V

    .line 313
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    .line 314
    const-string v0, "CameraApp"

    const-string v1, "stopPreviewRender(): thread joined"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public addCallbackBuffer([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mCameraDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mCameraDevice:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 228
    :cond_0
    return-void
.end method

.method public clearData(Z)V
    .locals 3
    .parameter "bReqeustRender"

    .prologue
    .line 349
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearData() bReqeustRender:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    invoke-virtual {v0}, Lcom/lge/camera/components/OpenGLYUVRenderer;->clearYuvData()V

    .line 352
    if-eqz p1, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->requestRender()V

    .line 357
    :cond_0
    return-void
.end method

.method public close(Landroid/hardware/Camera;)V
    .locals 5
    .parameter "camera"

    .prologue
    const/4 v4, 0x0

    .line 325
    const-string v2, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "close()-start, camera is null? :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-direct {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->stopProcessorThread()V

    .line 330
    iput-object v4, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 331
    iput-object v4, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 334
    if-eqz p1, :cond_0

    .line 335
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 336
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 337
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 338
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :cond_0
    :goto_1
    iput-object v4, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallbackBuffer:[B

    .line 344
    iput-object v4, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mCameraDevice:Landroid/hardware/Camera;

    .line 345
    const-string v1, "CameraApp"

    const-string v2, "close()-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void

    .line 325
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 340
    :catch_0
    move-exception v0

    .line 341
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CameraApp"

    const-string v2, "close stop:"

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public createOpenGLYUVRenderer(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/lge/camera/components/OpenGLSurfaceView;->detectOpenGLES20(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/OpenGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 71
    invoke-virtual {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    .line 72
    .local v0, landscape:Z
    new-instance v1, Lcom/lge/camera/components/OpenGLYUVRenderer;

    invoke-direct {v1, p0, v0}, Lcom/lge/camera/components/OpenGLYUVRenderer;-><init>(Lcom/lge/camera/components/OpenGLYUVRenderer$RendererAction;Z)V

    iput-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    .line 73
    iget-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/OpenGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 74
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/OpenGLSurfaceView;->setRenderMode(I)V

    .line 76
    .end local v0           #landscape:Z
    :cond_0
    return-void
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    return v0
.end method

.method public initEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V
    .locals 1
    .parameter "processor"
    .parameter "camera"

    .prologue
    const/4 v0, 0x0

    .line 88
    if-nez p2, :cond_0

    .line 102
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 92
    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 93
    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 94
    iput-object p1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 95
    iput-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 97
    invoke-virtual {p0, p2}, Lcom/lge/camera/components/OpenGLSurfaceView;->setPreviewCallback(Landroid/hardware/Camera;)V

    .line 100
    invoke-direct {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->startProcessorThread()V

    goto :goto_0
.end method

.method public initOpenGLSurfaceView(Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mListener:Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;

    .line 80
    return-void
.end method

.method public isCompleteProcessFrame()Z
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v0}, Lcom/lge/camera/components/ProcessorThread;->getcompleteFrame()Z

    move-result v0

    .line 165
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mIsCompleteFrame:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 374
    const-string v1, "CameraApp"

    const-string v2, "OpenGLSurfaceView onDestroy()"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    if-eqz v1, :cond_0

    .line 377
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/lge/camera/components/OpenGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    iget-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    invoke-virtual {v1}, Lcom/lge/camera/components/OpenGLYUVRenderer;->closeYUVRenderer()V

    .line 382
    iput-object v3, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    .line 384
    :cond_0
    iget-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mListener:Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;

    if-eqz v1, :cond_1

    .line 385
    iput-object v3, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mListener:Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;

    .line 387
    :cond_1
    return-void

    .line 378
    :catch_0
    move-exception v0

    .line 379
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "CameraApp"

    const-string v2, "OpenGLSurfaceView onDestroy() - setRenderer IllegalStateException"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 391
    const-string v0, "CameraApp"

    const-string v1, "OpenGLSurfaceView onPause()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 393
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 366
    const-string v0, "CameraApp"

    const-string v1, "OpenGLSurfaceView onResume()"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/OpenGLYUVRenderer;->setNeedCreateTexture(Z)V

    .line 370
    :cond_0
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 371
    return-void
.end method

.method public processFrameOnThread([B)V
    .locals 0
    .parameter "data"

    .prologue
    .line 404
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/OpenGLSurfaceView;->processPreviewFrame([B)V

    .line 405
    return-void
.end method

.method public processPreviewFrame([B)V
    .locals 5
    .parameter "data"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    if-nez v0, :cond_0

    .line 235
    const-string v0, "CameraApp"

    const-string v1, "mRawContext null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    iput-object p1, v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageData:[B

    .line 241
    iget-boolean v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mFlipH:Z

    if-eqz v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    iget v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    iput v1, v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->orientation:I

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    iget-object v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    invoke-virtual {v0, v1}, Lcom/lge/olaworks/library/EngineProcessor;->processPreview(Lcom/lge/olaworks/datastruct/JOlaBitmap;)Z

    .line 250
    :cond_1
    array-length v0, p1

    iget v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->previewW:I

    iget v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->previewH:I

    mul-int/2addr v1, v2

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff8

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    double-to-int v1, v1

    if-ne v0, v1, :cond_2

    .line 251
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    iget v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->previewW:I

    iget v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->previewH:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/lge/camera/components/OpenGLYUVRenderer;->setYuvData([BII)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    invoke-virtual {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->requestRender()V

    .line 257
    :cond_2
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/OpenGLSurfaceView;->addCallbackBuffer([B)V

    .line 258
    return-void

    .line 244
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    iget v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    iput v1, v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->orientation:I

    goto :goto_0
.end method

.method public processPreviewFrameAsync([B)V
    .locals 1
    .parameter "data"

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/ProcessorThread;->nextFrame([B)Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p0, p1}, Lcom/lge/camera/components/OpenGLSurfaceView;->addCallbackBuffer([B)V

    .line 222
    :cond_0
    return-void
.end method

.method public releasePreviewCallback(Landroid/hardware/Camera;)V
    .locals 1
    .parameter "camera"

    .prologue
    const/4 v0, 0x0

    .line 204
    invoke-direct {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->stopProcessorThread()V

    .line 207
    if-eqz p1, :cond_0

    .line 208
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 209
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 210
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 212
    :cond_0
    iput-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallbackBuffer:[B

    .line 213
    iput-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mCameraDevice:Landroid/hardware/Camera;

    .line 214
    return-void
.end method

.method public setActivityPausing(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 361
    iput-boolean p1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->isPause:Z

    .line 362
    return-void
.end method

.method public setCheckFPS(Z)V
    .locals 1
    .parameter "set"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mThread:Lcom/lge/camera/components/ProcessorThread;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/ProcessorThread;->setCheckFPS(Z)V

    .line 322
    :cond_0
    return-void
.end method

.method public setEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V
    .locals 1
    .parameter "processor"
    .parameter "camera"

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mIsCompleteFrame:Z

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/components/OpenGLSurfaceView;->initEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V

    .line 85
    return-void
.end method

.method public setFlipHorizontal(Z)V
    .locals 1
    .parameter "flipH"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0, p1}, Lcom/lge/olaworks/library/EngineProcessor;->setFlipHorizontal(Z)V

    .line 118
    :cond_0
    iput-boolean p1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mFlipH:Z

    .line 119
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    invoke-virtual {v0, p1}, Lcom/lge/camera/components/OpenGLYUVRenderer;->setflipH(Z)V

    .line 122
    :cond_1
    return-void
.end method

.method public setOrientation(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    add-int/lit8 v0, p1, 0x5a

    rem-int/lit16 p1, v0, 0x168

    .line 137
    :goto_0
    const/16 v0, 0x2d

    if-ge p1, v0, :cond_1

    .line 138
    iput v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    .line 139
    iput v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    .line 155
    :goto_1
    return-void

    .line 134
    :cond_0
    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    .line 140
    :cond_1
    const/16 v0, 0x87

    if-ge p1, v0, :cond_2

    .line 141
    iput v4, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    .line 142
    iput v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    goto :goto_1

    .line 143
    :cond_2
    const/16 v0, 0xe1

    if-ge p1, v0, :cond_3

    .line 144
    iput v3, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    .line 145
    iput v3, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    goto :goto_1

    .line 146
    :cond_3
    const/16 v0, 0x13b

    if-ge p1, v0, :cond_4

    .line 147
    iput v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    .line 148
    iput v4, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    goto :goto_1

    .line 150
    :cond_4
    iput v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    .line 151
    iput v1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientationFlip:I

    goto :goto_1
.end method

.method public setPreviewCallback(Landroid/hardware/Camera;)V
    .locals 12
    .parameter "camera"

    .prologue
    .line 169
    const-string v0, "CameraApp"

    const-string v1, "OpenGLSurfaceView - setPreviewCallback"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iput-object p1, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mCameraDevice:Landroid/hardware/Camera;

    .line 173
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    .line 174
    .local v8, param:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v11

    .line 176
    .local v11, previewSize:Landroid/hardware/Camera$Size;
    if-nez v11, :cond_0

    .line 177
    const-string v0, "CameraApp"

    const-string v1, "initEngineProcessor-end. it doesn`t get a previewSize"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v10, Landroid/graphics/PixelFormat;

    invoke-direct {v10}, Landroid/graphics/PixelFormat;-><init>()V

    .line 182
    .local v10, pixelinfo:Landroid/graphics/PixelFormat;
    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v9

    .line 183
    .local v9, pixelformat:I
    invoke-static {v9, v10}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 185
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallback:Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;

    if-nez v0, :cond_1

    .line 186
    new-instance v0, Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;-><init>(Lcom/lge/camera/components/OpenGLSurfaceView;)V

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallback:Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;

    .line 189
    :cond_1
    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    iget v1, v11, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v1

    iget v1, v10, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v0, v1

    div-int/lit8 v6, v0, 0x8

    .line 190
    .local v6, bufSize:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    const/4 v0, 0x2

    if-ge v7, v0, :cond_2

    .line 191
    new-array v0, v6, [B

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallbackBuffer:[B

    .line 192
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallbackBuffer:[B

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 190
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewCallback:Lcom/lge/camera/components/OpenGLSurfaceView$CameraPreviewCallback;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 196
    new-instance v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;

    iget v1, v11, Landroid/hardware/Camera$Size;->width:I

    iget v2, v11, Landroid/hardware/Camera$Size;->height:I

    const/16 v3, 0x402

    iget v4, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mOrientation:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/lge/olaworks/datastruct/JOlaBitmap;-><init>(IIII[B)V

    iput-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 198
    iget v0, v11, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->previewW:I

    .line 199
    iget v0, v11, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->previewH:I

    goto :goto_0
.end method

.method public setRenderWindowConfig()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mPreviewRenderer:Lcom/lge/camera/components/OpenGLYUVRenderer;

    invoke-virtual {p0}, Lcom/lge/camera/components/OpenGLSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/OpenGLYUVRenderer;->setSquareVertices(Z)V

    .line 128
    :cond_0
    return-void
.end method

.method public startPreview()V
    .locals 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mListener:Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mListener:Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;

    invoke-interface {v0}, Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;->isPreviewing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->mListener:Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/lge/camera/components/OpenGLSurfaceView$GLSurfaceListener;->startPreview(Landroid/hardware/Camera$Parameters;Z)V

    .line 412
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    .line 396
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OpenGLSurfaceView surfaceCreated holder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isPause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->isPause:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    iget-boolean v0, p0, Lcom/lge/camera/components/OpenGLSurfaceView;->isPause:Z

    if-nez v0, :cond_0

    .line 398
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 400
    :cond_0
    return-void
.end method
