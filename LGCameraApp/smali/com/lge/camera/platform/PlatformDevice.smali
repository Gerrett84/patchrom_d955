.class public Lcom/lge/camera/platform/PlatformDevice;
.super Ljava/lang/Object;
.source "PlatformDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/platform/PlatformDevice$IPlatformDeviceDualRec;,
        Lcom/lge/camera/platform/PlatformDevice$PlatformDeviceInterface;
    }
.end annotation


# static fields
.field private static IDualRec:Lcom/lge/camera/platform/PlatformDevice$IPlatformDeviceDualRec;

.field public static mDualRecorderSourceReadyCallback:Lcom/lge/filterpacks/DualRecorderFilter$SurfaceTextureSourceListener;

.field private static mGet:Lcom/lge/camera/platform/PlatformDevice$PlatformDeviceInterface;

.field public static mLearningDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$LearningDoneListener;

.field public static mLearningDoneListener_SmartZoom:Lcom/lge/filterpacks/SmartZoomFilter$LearningDoneListener;

.field private static mPerf:Lorg/codeaurora/Performance;

.field public static mPreviewFrameListener:Lcom/lge/filterpacks/DualRecorderFilter$PreviewFrameListener;

.field public static mSetBitmapDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$SetBitmapDoneListener;

.field public static mSetBitmapDoneListener_SmartZoom:Lcom/lge/filterpacks/SmartZoomFilter$SetBitmapDoneListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Lcom/lge/camera/platform/PlatformDevice;->mPerf:Lorg/codeaurora/Performance;

    .line 72
    new-instance v0, Lcom/lge/camera/platform/PlatformDevice$1;

    invoke-direct {v0}, Lcom/lge/camera/platform/PlatformDevice$1;-><init>()V

    sput-object v0, Lcom/lge/camera/platform/PlatformDevice;->mLearningDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$LearningDoneListener;

    .line 81
    new-instance v0, Lcom/lge/camera/platform/PlatformDevice$2;

    invoke-direct {v0}, Lcom/lge/camera/platform/PlatformDevice$2;-><init>()V

    sput-object v0, Lcom/lge/camera/platform/PlatformDevice;->mDualRecorderSourceReadyCallback:Lcom/lge/filterpacks/DualRecorderFilter$SurfaceTextureSourceListener;

    .line 99
    new-instance v0, Lcom/lge/camera/platform/PlatformDevice$3;

    invoke-direct {v0}, Lcom/lge/camera/platform/PlatformDevice$3;-><init>()V

    sput-object v0, Lcom/lge/camera/platform/PlatformDevice;->mPreviewFrameListener:Lcom/lge/filterpacks/DualRecorderFilter$PreviewFrameListener;

    .line 153
    new-instance v0, Lcom/lge/camera/platform/PlatformDevice$4;

    invoke-direct {v0}, Lcom/lge/camera/platform/PlatformDevice$4;-><init>()V

    sput-object v0, Lcom/lge/camera/platform/PlatformDevice;->mSetBitmapDoneListener:Lcom/lge/filterpacks/DualRecorderFilter$SetBitmapDoneListener;

    .line 174
    new-instance v0, Lcom/lge/camera/platform/PlatformDevice$5;

    invoke-direct {v0}, Lcom/lge/camera/platform/PlatformDevice$5;-><init>()V

    sput-object v0, Lcom/lge/camera/platform/PlatformDevice;->mLearningDoneListener_SmartZoom:Lcom/lge/filterpacks/SmartZoomFilter$LearningDoneListener;

    .line 211
    new-instance v0, Lcom/lge/camera/platform/PlatformDevice$6;

    invoke-direct {v0}, Lcom/lge/camera/platform/PlatformDevice$6;-><init>()V

    sput-object v0, Lcom/lge/camera/platform/PlatformDevice;->mSetBitmapDoneListener_SmartZoom:Lcom/lge/filterpacks/SmartZoomFilter$SetBitmapDoneListener;

    return-void
.end method

.method public constructor <init>(Lcom/lge/camera/platform/PlatformDevice$PlatformDeviceInterface;)V
    .locals 0
    .parameter "inf"

    .prologue
    .line 42
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sput-object p1, Lcom/lge/camera/platform/PlatformDevice;->mGet:Lcom/lge/camera/platform/PlatformDevice$PlatformDeviceInterface;

    .line 44
    return-void
.end method

.method public static DualRec_selectPIP(I)V
    .locals 3
    .parameter "cameraId"

    .prologue
    .line 55
    const-string v1, "CameraApp"

    const-string v2, "PlatformDevice - DualRecorderFilter.selectPIP is called"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :try_start_0
    invoke-static {p0}, Lcom/lge/filterpacks/DualRecorderFilter;->selectPIP(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "CameraApp"

    const-string v2, "Not supported DualRecorderFilter.selectPIP : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static DualRec_setPIPMask(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 122
    const-string v1, "CameraApp"

    const-string v2, "PlatformDevice - DualRecorderFilter.setPIPMask(bitmap) is called"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    :try_start_0
    invoke-static {p0}, Lcom/lge/filterpacks/DualRecorderFilter;->setPIPMask(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "CameraApp"

    const-string v2, "Not supported DualRecorderFilter.setPIPMask(bitmap) : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static DualRec_setPIPMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "bitmap"
    .parameter "overlaybitmap"
    .parameter "option"

    .prologue
    .line 131
    const-string v1, "CameraApp"

    const-string v2, "PlatformDevice - DualRecorderFilter.setPIPMask(bitmap, overlaybitmap, option) is called"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/lge/filterpacks/DualRecorderFilter;->setPIPMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "CameraApp"

    const-string v2, "Not supported DualRecorderFilter.setPIPMask(bitmap, overlaybitmap, option) : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static DualRec_setPIPPosition(IIII)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 64
    const-string v1, "CameraApp"

    const-string v2, "PlatformDevice - DualRecorderFilter.setPIPPosition is called"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/lge/filterpacks/DualRecorderFilter;->setPIPPosition(IIII)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "CameraApp"

    const-string v2, "Not supported DualRecorderFilter.setPIPPosition : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static DualRec_setPIPRotate(I)V
    .locals 3
    .parameter "degree"

    .prologue
    .line 141
    const-string v1, "CameraApp"

    const-string v2, "PlatformDevice - DualRecorderFilter.setPIPRotate(degree) is called"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :try_start_0
    invoke-static {p0}, Lcom/lge/filterpacks/DualRecorderFilter;->setPIPRotate(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "CameraApp"

    const-string v2, "Not supported DualRecorderFilter.setPIPRotate(degree) : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static DualRec_stopPIPPreview()V
    .locals 3

    .prologue
    .line 109
    :try_start_0
    invoke-static {}, Lcom/lge/camera/properties/MultimediaProperties;->isDualCameraAndRecordingVersion1_0()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const-string v1, "CameraApp"

    const-string v2, "PlatformDevice - CameraSource.manualStopPreview is called"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-static {}, Landroid/filterpacks/videosrc/CameraSource;->manualStopPreview()V

    .line 119
    .local v0, e:Ljava/lang/NoSuchMethodError;
    :goto_0
    return-void

    .line 113
    .end local v0           #e:Ljava/lang/NoSuchMethodError;
    :cond_0
    const-string v1, "CameraApp"

    const-string v2, "PlatformDevice - DualRecorderFilter.manualStopPreview is called"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/lge/filterpacks/DualRecorderFilter;->manualStopPreview()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .restart local v0       #e:Ljava/lang/NoSuchMethodError;
    const-string v1, "CameraApp"

    const-string v2, "Not supported CameraSource.manualStopPreview() or DualRecorderFilter.manualStopPreview : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static DualRec_takePreviewFrame()V
    .locals 3

    .prologue
    .line 91
    const-string v1, "CameraApp"

    const-string v2, "PlatformDevice - DualRecorderFilter.takePreviewFrame is called"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :try_start_0
    invoke-static {}, Lcom/lge/filterpacks/DualRecorderFilter;->takePreviewFrame()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .local v0, e:Ljava/lang/NoSuchMethodError;
    :goto_0
    return-void

    .line 94
    .end local v0           #e:Ljava/lang/NoSuchMethodError;
    :catch_0
    move-exception v0

    .line 95
    .restart local v0       #e:Ljava/lang/NoSuchMethodError;
    const-string v1, "CameraApp"

    const-string v2, "Not supported DualRecorderFilter.takePreviewFrame : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static SmartZoom_setObjectTrackingMode(Z)V
    .locals 4
    .parameter "mode"

    .prologue
    .line 222
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PlatformDevice - ObjectFilter.setObjectTrackingMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is called"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :try_start_0
    invoke-static {p0}, Lcom/lge/filterpacks/ObjectFilter;->setObjectTrackingMode(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "CameraApp"

    const-string v2, "Not supported SmartZoomFilter.setPIPRotate(degree) : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static SmartZoom_setPIPMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    .locals 3
    .parameter "bitmap"
    .parameter "overlaybitmap"
    .parameter "option"

    .prologue
    .line 193
    const-string v1, "CameraApp"

    const-string v2, "PlatformDevice - SmartZoomFilter.setPIPMask(bitmap, overlaybitmap, option) is called"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/lge/filterpacks/SmartZoomFilter;->setPIPMask(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "CameraApp"

    const-string v2, "Not supported SmartZoomFilter.setPIPMask(bitmap, overlaybitmap, option) : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static SmartZoom_setPIPPosition(IIII)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 166
    const-string v1, "CameraApp"

    const-string v2, "PlatformDevice - SmartZoomFilter.setPIPPosition is called"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/lge/filterpacks/SmartZoomFilter;->setPIPPosition(IIII)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "CameraApp"

    const-string v2, "Not supported SmartZoomFilter.setPIPPosition : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static SmartZoom_setPIPRotate(I)V
    .locals 3
    .parameter "degree"

    .prologue
    .line 203
    const-string v1, "CameraApp"

    const-string v2, "PlatformDevice - SmartZoomFilter.setPIPRotate(degree) is called"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :try_start_0
    invoke-static {p0}, Lcom/lge/filterpacks/SmartZoomFilter;->setPIPRotate(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "CameraApp"

    const-string v2, "Not supported SmartZoomFilter.setPIPRotate(degree) : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/lge/camera/platform/PlatformDevice$PlatformDeviceInterface;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/lge/camera/platform/PlatformDevice;->mGet:Lcom/lge/camera/platform/PlatformDevice$PlatformDeviceInterface;

    return-object v0
.end method

.method static synthetic access$100()Lcom/lge/camera/platform/PlatformDevice$IPlatformDeviceDualRec;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/lge/camera/platform/PlatformDevice;->IDualRec:Lcom/lge/camera/platform/PlatformDevice$IPlatformDeviceDualRec;

    return-object v0
.end method

.method public static cancelBurstShotPictures(Landroid/hardware/Camera;)V
    .locals 3
    .parameter "cameraDevice"

    .prologue
    .line 290
    if-eqz p0, :cond_0

    .line 292
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->cancelPicture()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "CameraApp"

    const-string v2, "Not supported cancelPicture : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getMultiWindowFocusAreas(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 4
    .parameter "param"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 326
    if-eqz p0, :cond_0

    .line 328
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getMultiWindowFocusAreas()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 334
    :cond_0
    :goto_0
    return-object v1

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v2, "CameraApp"

    const-string v3, "Parameters.getMultiWindowFocusAreas() is not supported on this device"

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static perfLockAcquire()V
    .locals 3

    .prologue
    .line 361
    sget-object v0, Lcom/lge/camera/platform/PlatformDevice;->mPerf:Lorg/codeaurora/Performance;

    const/16 v1, 0xbb8

    const/4 v2, 0x5

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    .line 362
    return-void

    .line 361
    :array_0
    .array-data 0x4
        0x4t 0x7t 0x0t 0x0t
        0x13t 0x2t 0x0t 0x0t
        0x13t 0x3t 0x0t 0x0t
        0x13t 0x4t 0x0t 0x0t
        0x13t 0x5t 0x0t 0x0t
    .end array-data
.end method

.method public static perfLockRelease()V
    .locals 1

    .prologue
    .line 358
    sget-object v0, Lcom/lge/camera/platform/PlatformDevice;->mPerf:Lorg/codeaurora/Performance;

    invoke-virtual {v0}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 359
    return-void
.end method

.method public static final runObjectTracking(Landroid/hardware/Camera;)V
    .locals 3
    .parameter "cameraDevice"

    .prologue
    .line 267
    if-eqz p0, :cond_0

    .line 269
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/Camera;->runObjectTracking()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "CameraApp"

    const-string v2, "Not supported runObjectTracking : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final runSuperZoom(Landroid/hardware/Camera;Z)V
    .locals 4
    .parameter "cameraDevice"
    .parameter "run"

    .prologue
    .line 342
    if-eqz p0, :cond_0

    .line 344
    :try_start_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Platform device : runSuperZoom()? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "CameraApp"

    const-string v2, "runSuperZoom() is not supported on this device"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static final setISPDataCallbackMode(Landroid/hardware/Camera;Landroid/hardware/Camera$CameraDataCallback;)V
    .locals 3
    .parameter "cameraDevice"
    .parameter "cb"

    .prologue
    .line 235
    if-eqz p0, :cond_0

    .line 237
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setISPDataCallbackMode(Landroid/hardware/Camera$CameraDataCallback;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "CameraApp"

    const-string v2, "Not supported setISPDataCallbackMode : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final setOBTDataCallbackMode(Landroid/hardware/Camera;Landroid/hardware/Camera$CameraDataCallback;)V
    .locals 3
    .parameter "cameraDevice"
    .parameter "cb"

    .prologue
    .line 246
    if-eqz p0, :cond_0

    .line 248
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setOBTDataCallbackMode(Landroid/hardware/Camera$CameraDataCallback;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "CameraApp"

    const-string v2, "Not supported setOBTDataCallbackMode : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static final setObjectTracking(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 3
    .parameter "parameters"
    .parameter "value"

    .prologue
    .line 257
    if-eqz p0, :cond_0

    .line 259
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setObjectTracking(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "CameraApp"

    const-string v2, "Not supported setObjectTracking : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setOnSurfaceTextureSourceReady(Lcom/lge/camera/platform/PlatformDevice$IPlatformDeviceDualRec;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 150
    sput-object p0, Lcom/lge/camera/platform/PlatformDevice;->IDualRec:Lcom/lge/camera/platform/PlatformDevice$IPlatformDeviceDualRec;

    .line 151
    return-void
.end method

.method public static setSceneDetectMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 3
    .parameter "parameters"
    .parameter "value"

    .prologue
    .line 277
    if-eqz p0, :cond_0

    .line 279
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/hardware/Camera$Parameters;->setSceneDetectMode(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "CameraApp"

    const-string v2, "Not supported setSceneDetectMode : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static updateObjectPosition(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 184
    const-string v1, "CameraApp"

    const-string v2, "PlatformDevice - ObjectFilter.updateObjPosition is called - ObjectFilter"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :try_start_0
    invoke-static {p0, p1}, Lcom/lge/filterpacks/ObjectFilter;->updateObjPosition(II)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_0
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "CameraApp"

    const-string v2, "Not supported ObjectFilter.updateObjPosition : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static videoPause(Landroid/media/MediaRecorder;)V
    .locals 3
    .parameter "recorder"

    .prologue
    .line 303
    if-eqz p0, :cond_0

    .line 305
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "CameraApp"

    const-string v2, "Not supported record pause : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static videoResume(Landroid/media/MediaRecorder;)V
    .locals 3
    .parameter "recorder"

    .prologue
    .line 313
    if-eqz p0, :cond_0

    .line 315
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaRecorder;->resume()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, e:Ljava/lang/NoSuchMethodError;
    const-string v1, "CameraApp"

    const-string v2, "Not supported record resume : "

    invoke-static {v1, v2, v0}, Lcom/lge/camera/util/CamLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public unbind()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    sput-object v0, Lcom/lge/camera/platform/PlatformDevice;->mGet:Lcom/lge/camera/platform/PlatformDevice$PlatformDeviceInterface;

    .line 48
    sput-object v0, Lcom/lge/camera/platform/PlatformDevice;->IDualRec:Lcom/lge/camera/platform/PlatformDevice$IPlatformDeviceDualRec;

    .line 49
    return-void
.end method
