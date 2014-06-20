.class public Lcom/lge/camera/components/CameraPreview;
.super Landroid/view/SurfaceView;
.source "CameraPreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;,
        Lcom/lge/camera/components/CameraPreview$OnDeviceListener;
    }
.end annotation


# static fields
.field public static final DONT_CARE:F = 0.0f

.field protected static final MAX_PREVIEW_BUFFER:I = 0x1

.field public static final TAG:Ljava/lang/String; = "CameraApp"


# instance fields
.field private drawRectF:Landroid/graphics/RectF;

.field private mAspectRatio:F

.field private mDeviceListener:Lcom/lge/camera/components/CameraPreview$OnDeviceListener;

.field private mDrawMode:I

.field protected mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

.field private mFaceCount:I

.field private mFaceRect:[Landroid/graphics/Rect;

.field private mFaceRoundRectCorner:F

.field private mFaceStrokeWidth:I

.field protected mFlipH:Z

.field private mHorizontalTileSize:I

.field protected mOrientation:I

.field protected mOrientationFlip:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPanoramaGuideBottom:F

.field private mPanoramaGuideColor:I

.field private mPanoramaGuideHeight:I

.field private mPanoramaGuideLeft:F

.field private mPanoramaGuideMoveRate:F

.field private mPanoramaGuideRight:F

.field private mPanoramaGuideTop:F

.field private mPanoramaGuideWidth:I

.field private mPanoramaInitialized:Z

.field private mParentPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

.field private mPreviewCallbackBuffer:[B

.field protected mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

.field private mRectColor:[I

.field private mSrcPreviewHeight:I

.field private mSrcPreviewWidth:I

.field private mVerticalTileSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x5

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 51
    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mHorizontalTileSize:I

    .line 52
    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mVerticalTileSize:I

    .line 54
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 55
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 56
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 57
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    .line 58
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraPreview;->mFlipH:Z

    .line 60
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mParentPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 61
    new-instance v0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;-><init>(Lcom/lge/camera/components/CameraPreview;)V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    .line 63
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallbackBuffer:[B

    .line 79
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mDeviceListener:Lcom/lge/camera/components/CameraPreview$OnDeviceListener;

    .line 355
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mDrawMode:I

    .line 364
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    .line 421
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    .line 422
    new-array v0, v3, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    .line 423
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mRectColor:[I

    .line 431
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceStrokeWidth:I

    .line 432
    const/high16 v0, 0x4180

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRoundRectCorner:F

    .line 476
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaInitialized:Z

    .line 483
    const/high16 v0, -0x1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideColor:I

    .line 484
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideMoveRate:F

    .line 67
    return-void

    .line 423
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x5

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mHorizontalTileSize:I

    .line 52
    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mVerticalTileSize:I

    .line 54
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 55
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 56
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 57
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    .line 58
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraPreview;->mFlipH:Z

    .line 60
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mParentPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 61
    new-instance v0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;-><init>(Lcom/lge/camera/components/CameraPreview;)V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    .line 63
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallbackBuffer:[B

    .line 79
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mDeviceListener:Lcom/lge/camera/components/CameraPreview$OnDeviceListener;

    .line 355
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mDrawMode:I

    .line 364
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    .line 421
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    .line 422
    new-array v0, v3, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    .line 423
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mRectColor:[I

    .line 431
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceStrokeWidth:I

    .line 432
    const/high16 v0, 0x4180

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRoundRectCorner:F

    .line 476
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaInitialized:Z

    .line 483
    const/high16 v0, -0x1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideColor:I

    .line 484
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideMoveRate:F

    .line 70
    return-void

    .line 423
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x5

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mHorizontalTileSize:I

    .line 52
    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mVerticalTileSize:I

    .line 54
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 55
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 56
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 57
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    .line 58
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraPreview;->mFlipH:Z

    .line 60
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mParentPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 61
    new-instance v0, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    invoke-direct {v0, p0}, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;-><init>(Lcom/lge/camera/components/CameraPreview;)V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    .line 63
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallbackBuffer:[B

    .line 79
    iput-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mDeviceListener:Lcom/lge/camera/components/CameraPreview$OnDeviceListener;

    .line 355
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mDrawMode:I

    .line 364
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    .line 421
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    .line 422
    new-array v0, v3, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    .line 423
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mRectColor:[I

    .line 431
    const/4 v0, 0x2

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceStrokeWidth:I

    .line 432
    const/high16 v0, 0x4180

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRoundRectCorner:F

    .line 476
    iput-boolean v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaInitialized:Z

    .line 483
    const/high16 v0, -0x1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideColor:I

    .line 484
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideMoveRate:F

    .line 73
    return-void

    .line 423
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$000(Lcom/lge/camera/components/CameraPreview;)Lcom/lge/camera/components/CameraPreview$OnDeviceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mDeviceListener:Lcom/lge/camera/components/CameraPreview$OnDeviceListener;

    return-object v0
.end method

.method private roundUpToTile(III)I
    .locals 1
    .parameter "dimension"
    .parameter "tileSize"
    .parameter "maxDimension"

    .prologue
    .line 349
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, p2

    mul-int/2addr v0, p2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public close(Landroid/hardware/Camera;)V
    .locals 5
    .parameter "camera"

    .prologue
    const/4 v4, 0x0

    .line 85
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

    .line 86
    iput-object v4, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 87
    iput-object v4, p0, Lcom/lge/camera/components/CameraPreview;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 90
    if-eqz p1, :cond_0

    .line 91
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 92
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 93
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 94
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :cond_0
    :goto_1
    iput-object v4, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallbackBuffer:[B

    .line 101
    const-string v1, "CameraApp"

    const-string v2, "close()-end"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void

    .line 85
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 105
    iput-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 106
    iput-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 107
    iput-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallbackBuffer:[B

    .line 108
    iput-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mParentPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 109
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->closeCallback()V

    .line 111
    iput-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    .line 114
    :cond_0
    iput-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    .line 115
    iput-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    .line 116
    return-void
.end method

.method public getDrawMode()I
    .locals 1

    .prologue
    .line 361
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mDrawMode:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    return v0
.end method

.method public getSrcImageHeight()I
    .locals 1

    .prologue
    .line 454
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    return v0
.end method

.method public getSrcImageWidth()I
    .locals 1

    .prologue
    .line 451
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    return v0
.end method

.method public goOnPanoramaDrawing()V
    .locals 1

    .prologue
    .line 528
    const/high16 v0, -0x1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideColor:I

    .line 529
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaInitialized:Z

    .line 530
    return-void
.end method

.method public initEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V
    .locals 13
    .parameter "processor"
    .parameter "camera"

    .prologue
    const/4 v5, 0x0

    .line 216
    if-nez p2, :cond_0

    .line 266
    :goto_0
    return-void

    .line 220
    :cond_0
    const-string v0, "CameraApp"

    const-string v1, "initEngineProcessor-start"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iput-object v5, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 224
    invoke-virtual {p2, v5}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 225
    invoke-virtual {p2, v5}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 227
    iput-object p1, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    .line 228
    iput-object v5, p0, Lcom/lge/camera/components/CameraPreview;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 229
    iput-object v5, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallbackBuffer:[B

    .line 231
    const/4 v6, 0x0

    .line 232
    .local v6, bufSize:I
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v9

    .line 233
    .local v9, param:Landroid/hardware/Camera$Parameters;
    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 234
    .local v12, previewSize:Landroid/hardware/Camera$Size;
    if-nez v12, :cond_1

    .line 235
    const-string v0, "CameraApp"

    const-string v1, "initEngineProcessor-end. it doesn`t get a previewSize"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_1
    :try_start_0
    new-instance v11, Landroid/graphics/PixelFormat;

    invoke-direct {v11}, Landroid/graphics/PixelFormat;-><init>()V

    .line 241
    .local v11, pixelinfo:Landroid/graphics/PixelFormat;
    invoke-virtual {v9}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v10

    .line 242
    .local v10, pixelformat:I
    invoke-static {v10, v11}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 244
    iget v0, v12, Landroid/hardware/Camera$Size;->width:I

    iget v1, v12, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v1

    iget v1, v11, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    mul-int/2addr v0, v1

    div-int/lit8 v6, v0, 0x8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v10           #pixelformat:I
    .end local v11           #pixelinfo:Landroid/graphics/PixelFormat;
    :goto_1
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    const/4 v0, 0x1

    if-ge v8, v0, :cond_2

    .line 255
    new-array v0, v6, [B

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallbackBuffer:[B

    .line 256
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallbackBuffer:[B

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 254
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 245
    .end local v8           #i:I
    :catch_0
    move-exception v7

    .line 246
    .local v7, e:Ljava/lang/Exception;
    const-string v0, "CameraApp"

    const-string v1, "initEngineProcessor Exception : "

    invoke-static {v0, v1, v7}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 247
    iget v0, v12, Landroid/hardware/Camera$Size;->width:I

    iget v1, v12, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xc

    div-int/lit8 v6, v0, 0x8

    goto :goto_1

    .line 258
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #i:I
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->setEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;)V

    .line 260
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mParentPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->setParentPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 261
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->setCompleteFrame(Z)V

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    invoke-virtual {p2, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 264
    new-instance v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;

    iget v1, v12, Landroid/hardware/Camera$Size;->width:I

    iget v2, v12, Landroid/hardware/Camera$Size;->height:I

    const/16 v3, 0x402

    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    invoke-direct/range {v0 .. v5}, Lcom/lge/olaworks/datastruct/JOlaBitmap;-><init>(IIII[B)V

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 265
    const-string v0, "CameraApp"

    const-string v1, "initEngineProcessor-end"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public initPanoramaGuide()V
    .locals 8

    .prologue
    const/high16 v7, 0x4000

    .line 487
    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 488
    .local v1, wScale:F
    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 490
    .local v0, hScale:F
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a00a1

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    .line 491
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a00a2

    invoke-static {v4, v5}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    .line 492
    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    int-to-float v4, v4

    div-float/2addr v4, v7

    iget v5, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    div-float/2addr v4, v5

    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideMoveRate:F

    .line 494
    const/4 v2, 0x1

    .line 495
    .local v2, weightLeft:I
    const/4 v3, 0x1

    .line 497
    .local v3, weightTop:I
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isHDmodel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 498
    const/16 v2, 0xc

    .line 505
    :cond_0
    :goto_0
    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    sub-int/2addr v4, v2

    int-to-float v4, v4

    div-float/2addr v4, v7

    iget v5, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    .line 506
    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    iget v5, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideRight:F

    .line 507
    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    sub-int/2addr v4, v3

    int-to-float v4, v4

    div-float/2addr v4, v7

    iget v5, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    .line 508
    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    iget v5, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideBottom:F

    .line 509
    return-void

    .line 499
    :cond_1
    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isXGAmodel()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/lge/camera/properties/ModelProperties;->isUVGAmodel()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 501
    :cond_2
    const/4 v3, -0x2

    .line 502
    const/16 v2, 0xa

    goto :goto_0
.end method

.method public initializePanorama(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaInitialized:Z

    .line 521
    return-void
.end method

.method public isCompleteProcessFrame()Z
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPreviewCallback:Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;

    invoke-virtual {v0}, Lcom/lge/camera/components/CameraPreview$CameraPreviewCallback;->isCompleteFrame()Z

    move-result v0

    .line 159
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 366
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mDrawMode:I

    packed-switch v0, :pswitch_data_0

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 368
    :pswitch_0
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceCount:I

    if-lez v0, :cond_0

    .line 369
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    if-eq v0, v1, :cond_1

    .line 370
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 373
    :cond_1
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceCount:I

    if-ge v6, v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 375
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mRectColor:[I

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 378
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 379
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 380
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 381
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 382
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 389
    :goto_2
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRoundRectCorner:F

    iget v2, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRoundRectCorner:F

    iget-object v3, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 373
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 384
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    iget-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v6

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 385
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    iget-object v2, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v2, v2, v6

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 386
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 387
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->drawRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    aget-object v1, v1, v6

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    .line 395
    .end local v6           #i:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    if-eq v0, v1, :cond_3

    .line 396
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 399
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 400
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4080

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 401
    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    iget v2, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    iget v3, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideRight:F

    iget v4, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideBottom:F

    iget-object v5, p0, Lcom/lge/camera/components/CameraPreview;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 316
    iget v7, p0, Lcom/lge/camera/components/CameraPreview;->mAspectRatio:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 317
    .local v1, fAspectRatio:Ljava/lang/Float;
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 318
    .local v2, fDontCare:Ljava/lang/Float;
    invoke-virtual {v1, v2}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v7

    if-eqz v7, :cond_3

    .line 319
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 320
    .local v6, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 321
    .local v4, heightSpecSize:I
    move v5, v6

    .line 322
    .local v5, width:I
    move v3, v4

    .line 324
    .local v3, height:I
    if-lez v5, :cond_4

    if-lez v3, :cond_4

    .line 325
    int-to-float v7, v5

    int-to-float v8, v3

    div-float v0, v7, v8

    .line 326
    .local v0, defaultRatio:F
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 327
    const/high16 v7, 0x3f80

    div-float v0, v7, v0

    .line 329
    :cond_0
    iget v7, p0, Lcom/lge/camera/components/CameraPreview;->mAspectRatio:F

    cmpg-float v7, v0, v7

    if-gez v7, :cond_2

    .line 331
    int-to-float v7, v5

    iget v8, p0, Lcom/lge/camera/components/CameraPreview;->mAspectRatio:F

    div-float/2addr v7, v8

    float-to-int v3, v7

    .line 335
    :cond_1
    :goto_0
    iget v7, p0, Lcom/lge/camera/components/CameraPreview;->mHorizontalTileSize:I

    invoke-direct {p0, v5, v7, v6}, Lcom/lge/camera/components/CameraPreview;->roundUpToTile(III)I

    move-result v5

    .line 336
    iget v7, p0, Lcom/lge/camera/components/CameraPreview;->mVerticalTileSize:I

    invoke-direct {p0, v3, v7, v4}, Lcom/lge/camera/components/CameraPreview;->roundUpToTile(III)I

    move-result v3

    .line 338
    invoke-virtual {p0, v5, v3}, Lcom/lge/camera/components/CameraPreview;->setMeasuredDimension(II)V

    .line 339
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->initPanoramaGuide()V

    .line 346
    .end local v0           #defaultRatio:F
    .end local v3           #height:I
    .end local v4           #heightSpecSize:I
    .end local v5           #width:I
    .end local v6           #widthSpecSize:I
    :goto_1
    return-void

    .line 332
    .restart local v0       #defaultRatio:F
    .restart local v3       #height:I
    .restart local v4       #heightSpecSize:I
    .restart local v5       #width:I
    .restart local v6       #widthSpecSize:I
    :cond_2
    iget v7, p0, Lcom/lge/camera/components/CameraPreview;->mAspectRatio:F

    cmpl-float v7, v0, v7

    if-lez v7, :cond_1

    .line 333
    int-to-float v7, v3

    iget v8, p0, Lcom/lge/camera/components/CameraPreview;->mAspectRatio:F

    mul-float/2addr v7, v8

    float-to-int v5, v7

    goto :goto_0

    .line 343
    .end local v0           #defaultRatio:F
    .end local v3           #height:I
    .end local v4           #heightSpecSize:I
    .end local v5           #width:I
    .end local v6           #widthSpecSize:I
    :cond_3
    const-string v7, "CameraApp"

    const-string v8, "mAspectRatio is 0.0f"

    invoke-static {v7, v8}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    goto :goto_1
.end method

.method public processPreviewFrame([B)V
    .locals 2
    .parameter "data"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mRawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;

    .line 287
    .local v0, rawContext:Lcom/lge/olaworks/datastruct/JOlaBitmap;
    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-eqz v1, :cond_0

    .line 288
    iput-object p1, v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->imageData:[B

    .line 289
    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    iput v1, v0, Lcom/lge/olaworks/datastruct/JOlaBitmap;->orientation:I

    .line 291
    iget-object v1, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v1, v0}, Lcom/lge/olaworks/library/EngineProcessor;->processPreview(Lcom/lge/olaworks/datastruct/JOlaBitmap;)Z

    .line 293
    :cond_0
    return-void
.end method

.method public releasePreviewCallback(Landroid/hardware/Camera;)V
    .locals 1
    .parameter "camera"

    .prologue
    const/4 v0, 0x0

    .line 269
    if-eqz p1, :cond_0

    .line 270
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 271
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 273
    :cond_0
    return-void
.end method

.method public resetAutoPanorama()V
    .locals 0

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->postInvalidate()V

    .line 539
    return-void
.end method

.method public resetFaceRectangles()V
    .locals 1

    .prologue
    .line 464
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    .line 465
    const/4 v0, 0x0

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mFaceCount:I

    .line 466
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->postInvalidate()V

    .line 467
    return-void
.end method

.method public resetPanoramaGuide()V
    .locals 0

    .prologue
    .line 533
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->initPanoramaGuide()V

    .line 534
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->postInvalidate()V

    .line 535
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 4
    .parameter "aspectRatio"

    .prologue
    .line 302
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 303
    .local v0, faspectRatio:Ljava/lang/Float;
    iget v2, p0, Lcom/lge/camera/components/CameraPreview;->mAspectRatio:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 304
    .local v1, fmAspectRatio:Ljava/lang/Float;
    invoke-virtual {v0, v1}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    iput p1, p0, Lcom/lge/camera/components/CameraPreview;->mAspectRatio:F

    .line 306
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->requestLayout()V

    .line 307
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->invalidate()V

    .line 312
    :goto_0
    return-void

    .line 309
    :cond_0
    const-string v2, "CameraApp"

    const-string v3, "setAspectRatio and aspectRatio are same"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAspectRatio(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 296
    int-to-float v1, p1

    int-to-float v2, p2

    div-float v0, v1, v2

    .line 297
    .local v0, aspectRatio:F
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAspectRatio:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0, v0}, Lcom/lge/camera/components/CameraPreview;->setAspectRatio(F)V

    .line 299
    return-void
.end method

.method public setDeviceListener(Lcom/lge/camera/components/CameraPreview$OnDeviceListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lge/camera/components/CameraPreview;->mDeviceListener:Lcom/lge/camera/components/CameraPreview$OnDeviceListener;

    .line 82
    return-void
.end method

.method public setDrawMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 357
    iput p1, p0, Lcom/lge/camera/components/CameraPreview;->mDrawMode:I

    .line 358
    return-void
.end method

.method public setEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V
    .locals 2
    .parameter "processor"
    .parameter "camera"

    .prologue
    .line 276
    if-nez p2, :cond_0

    .line 277
    const-string v0, "CameraApp"

    const-string v1, "exit setEngineProcessor by camera == null"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/lge/camera/components/CameraPreview;->initEngineProcessor(Lcom/lge/olaworks/library/EngineProcessor;Landroid/hardware/Camera;)V

    goto :goto_0
.end method

.method public setFaceRectangleColor(II)V
    .locals 1
    .parameter "index"
    .parameter "color"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mRectColor:[I

    aput p2, v0, p1

    .line 471
    return-void
.end method

.method public setFaceRectangles([Landroid/graphics/Rect;I)V
    .locals 0
    .parameter "rect"
    .parameter "faceCount"

    .prologue
    .line 458
    iput-object p1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRect:[Landroid/graphics/Rect;

    .line 459
    iput p2, p0, Lcom/lge/camera/components/CameraPreview;->mFaceCount:I

    .line 460
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->postInvalidate()V

    .line 461
    return-void
.end method

.method public setFlipHorizontal(Z)V
    .locals 1
    .parameter "flipH"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/lge/camera/components/CameraPreview;->mEngineProcessor:Lcom/lge/olaworks/library/EngineProcessor;

    invoke-virtual {v0, p1}, Lcom/lge/olaworks/library/EngineProcessor;->setFlipHorizontal(Z)V

    .line 126
    :cond_0
    iput-boolean p1, p0, Lcom/lge/camera/components/CameraPreview;->mFlipH:Z

    .line 127
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

    .line 130
    rem-int/lit16 p1, p1, 0x168

    .line 132
    const/16 v0, 0x2d

    if-ge p1, v0, :cond_0

    .line 133
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 134
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    .line 149
    :goto_0
    return-void

    .line 135
    :cond_0
    const/16 v0, 0x87

    if-ge p1, v0, :cond_1

    .line 136
    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 137
    iput v2, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    goto :goto_0

    .line 138
    :cond_1
    const/16 v0, 0xe1

    if-ge p1, v0, :cond_2

    .line 139
    iput v3, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 140
    iput v3, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    goto :goto_0

    .line 141
    :cond_2
    const/16 v0, 0x13b

    if-ge p1, v0, :cond_3

    .line 142
    iput v2, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 143
    iput v4, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    goto :goto_0

    .line 145
    :cond_3
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientation:I

    .line 146
    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mOrientationFlip:I

    goto :goto_0
.end method

.method public setPanoramaGuideColor(Z)V
    .locals 1
    .parameter "capture"

    .prologue
    .line 512
    if-eqz p1, :cond_0

    .line 513
    const v0, -0xff0100

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideColor:I

    .line 517
    :goto_0
    return-void

    .line 515
    :cond_0
    const/high16 v0, -0x1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideColor:I

    goto :goto_0
.end method

.method public setPanoramaGuidePosition(IIII)V
    .locals 3
    .parameter "direction"
    .parameter "hDist"
    .parameter "vDist"
    .parameter "status"

    .prologue
    const/high16 v2, 0x4000

    .line 542
    int-to-float v0, p2

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideMoveRate:F

    mul-float/2addr v0, v1

    float-to-int p2, v0

    .line 543
    int-to-float v0, p3

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideMoveRate:F

    mul-float/2addr v0, v1

    float-to-int p3, v0

    .line 545
    iget-boolean v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaInitialized:Z

    if-nez v0, :cond_0

    .line 578
    :goto_0
    return-void

    .line 549
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 577
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->postInvalidate()V

    goto :goto_0

    .line 553
    :pswitch_1
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    sub-int/2addr v0, p2

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    .line 554
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideRight:F

    .line 555
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    .line 556
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideBottom:F

    goto :goto_1

    .line 559
    :pswitch_2
    rsub-int/lit8 v0, p2, 0x0

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    .line 560
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideRight:F

    .line 561
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    .line 562
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideBottom:F

    goto :goto_1

    .line 565
    :pswitch_3
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, p2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    .line 566
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideRight:F

    .line 567
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    .line 568
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideBottom:F

    goto :goto_1

    .line 571
    :pswitch_4
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    int-to-float v0, v0

    div-float/2addr v0, v2

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    int-to-float v1, p2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    .line 572
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideLeft:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideRight:F

    .line 573
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v0, v0

    neg-float v0, v0

    div-float/2addr v0, v2

    int-to-float v1, p3

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    .line 574
    iget v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideTop:F

    iget v1, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaGuideBottom:F

    goto/16 :goto_1

    .line 549
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/lge/camera/components/CameraPreview;->mParentPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 120
    return-void
.end method

.method public setSrcImageSize(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/lge/camera/util/Util;->isConfigureLandscape(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    iput p1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    .line 440
    iput p2, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    .line 446
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/components/CameraPreview;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 447
    .local v0, scale:F
    const/high16 v1, 0x4000

    const/high16 v2, 0x3fc0

    mul-float/2addr v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceStrokeWidth:I

    .line 448
    const/high16 v1, 0x4100

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/lge/camera/components/CameraPreview;->mFaceRoundRectCorner:F

    .line 449
    return-void

    .line 442
    .end local v0           #scale:F
    :cond_0
    iput p2, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewWidth:I

    .line 443
    iput p1, p0, Lcom/lge/camera/components/CameraPreview;->mSrcPreviewHeight:I

    goto :goto_0
.end method

.method public stopPanoramaDrawing()V
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/CameraPreview;->mPanoramaInitialized:Z

    .line 525
    return-void
.end method
