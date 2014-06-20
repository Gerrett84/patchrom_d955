.class public Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;
.super Ljava/lang/Object;
.source "MorphoImageStitcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;,
        Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$GalleryData;,
        Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;,
        Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$BgColor;,
        Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE_MORPHO_PANORAMA:I = 0x1

.field public static final CONTENT_TYPE_NONE:I = 0x0

.field public static final CONTENT_TYPE_PHOTO_SPHERE:I = 0x2

.field public static final DISP_TYPE_BACKGROUND:I = 0x2

.field public static final DISP_TYPE_NONE:I = 0x0

.field public static final DISP_TYPE_WIRE_FRAME:I = 0x1

.field public static final ERROR_GENERAL_ERROR:I = -0x80000000

.field public static final ERROR_IO:I = -0x7ffffff8

.field public static final ERROR_MALLOC:I = -0x7ffffffc

.field public static final ERROR_PARAM:I = -0x7fffffff

.field public static final ERROR_STATE:I = -0x7ffffffe

.field public static final ERROR_UNKNOWN:I = -0x40000000

.field public static final ERROR_UNSUPPORTED:I = -0x7ffffff0

.field public static final GUIDE_TYPE_FREE:I = -0x1

.field public static final GUIDE_TYPE_HORIZONTAL:I = 0x0

.field public static final GUIDE_TYPE_RADIAL:I = 0x3

.field public static final GUIDE_TYPE_VANILLA:I = 0x4

.field public static final GUIDE_TYPE_VANILLA2:I = 0x5

.field public static final GUIDE_TYPE_VERTICAL:I = 0x1

.field public static final GUIDE_TYPE_WHIRLPOOL:I = 0x2

.field public static final MODE_STITCHING:I = 0x0

.field public static final MODE_VIEWING:I = 0x1

.field public static final MORPHO_DOPROCESS:I = 0x1

.field public static final MORPHO_OK:I = 0x0

.field private static final POINT_INFO_SIZE:I = 0x2

.field private static final POINT_X_OFFSET:I = 0x0

.field private static final POINT_Y_OFFSET:I = 0x1

.field public static final PROJECTION_TYPE_CYLINDRICAL_H:I = 0x3

.field public static final PROJECTION_TYPE_CYLINDRICAL_V:I = 0x4

.field public static final PROJECTION_TYPE_FISHEYE:I = 0x5

.field public static final PROJECTION_TYPE_MERCATOR_H:I = 0x0

.field public static final PROJECTION_TYPE_MERCATOR_V:I = 0x1

.field public static final PROJECTION_TYPE_PERSPECTIVE:I = 0x2

.field private static final RECT_BOTTOM_OFFSET:I = 0x3

.field private static final RECT_INFO_SIZE:I = 0x4

.field private static final RECT_LEFT_OFFSET:I = 0x0

.field private static final RECT_RIGHT_OFFSET:I = 0x2

.field private static final RECT_TOP_OFFSET:I = 0x1

.field public static final RENDER_MODE_OPEN_GL:I = 0x1

.field public static final RENDER_MODE_SOFT:I = 0x0

.field public static final ROTATE_0:I = 0x0

.field public static final ROTATE_180:I = 0x2

.field public static final ROTATE_270:I = 0x3

.field public static final ROTATE_90:I = 0x1

.field public static final SENSOR_TYPE_CORRECTED_GYROSCOPE:I = 0x2

.field public static final SENSOR_TYPE_GYROSCOPE:I = 0x0

.field public static final SENSOR_TYPE_ROTATION_VECTOR:I = 0x1

.field public static final STATUS_2_3RD_LATITUDE_COMPLETE:I = 0x9

.field public static final STATUS_ALIGN_FAILURE:I = 0x3

.field public static final STATUS_GUIDE_ENDED:I = 0x2

.field public static final STATUS_OUT_OF_MEMORY:I = 0x1

.field public static final STATUS_STITCHING:I = 0x0

.field public static final STATUS_STOPPED_BY_ERROR:I = 0x4

.field public static final STATUS_WARNING_ALIGN_FAILURE:I = 0x8

.field public static final STATUS_WARNING_NEED_TO_STOP:I = 0x5

.field public static final STATUS_WARNING_TOO_FAR:I = 0x7

.field public static final STATUS_WARNING_TOO_FAST:I = 0x6

.field public static final STATUS_WHOLE_SPHERE_COMPLETE:I = 0xa

.field public static final STILL_IMAGE_FORMAT_JPEG:I = 0x100

.field public static final STILL_IMAGE_FORMAT_YVU420SP:I = 0x11

.field private static final STITCH_INFO_ANGLE_OFFSET:I = 0x1

.field private static final STITCH_INFO_INFO_SIZE:I = 0x2

.field private static final STITCH_INFO_SCALE_OFFSET:I = 0x0

.field public static final USE_IMAGE_FORCE:I = 0x1

.field public static final USE_IMAGE_NONE:I = -0x1

.field public static final USE_IMAGE_NORMAL:I = 0x0

.field public static final USE_SENSOR_FOR_ALIGNMENT_WHEN_FAILED:I = 0x0

.field public static final USE_SENSOR_FOR_GLOBAL_ALIGNMENT:I = 0x1

.field public static final VERSION_1:I = 0x0

.field public static final VERSION_2:I = 0x1


# instance fields
.field private mFinished:Z

.field private mIsInitialized:Z

.field private mNative:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    :try_start_0
    const-string v1, "morpho_panorama_wa_4"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 17
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 18
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "MorphoImageStitcher"

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v1, "MorphoImageStitcher"

    const-string v2, "can\'t loadLibrary"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 215
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean v3, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mIsInitialized:Z

    .line 29
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mFinished:Z

    .line 107
    iput v3, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    .line 216
    const-string v1, "CameraApp"

    const-string v2, "MorphoImageStitcher create Start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-direct {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->createNativeObject()I

    move-result v0

    .line 218
    .local v0, ret:I
    if-lez v0, :cond_0

    .line 219
    iput-boolean v3, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mFinished:Z

    .line 220
    iput v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    .line 226
    :goto_0
    const-string v1, "MorphoImageStitcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create End ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    return-void

    .line 222
    :cond_0
    iput v3, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    .line 223
    const v0, -0x7ffffffc

    goto :goto_0
.end method

.method private final native createNativeObject()I
.end method

.method private final native deleteNativeObject(I)V
.end method

.method public static getContentType(Ljava/lang/String;)I
    .locals 1
    .parameter "path"

    .prologue
    .line 212
    invoke-static {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetContentType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    invoke-static {}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final native nativeAttach(I[BI[I[I)I
.end method

.method private final native nativeDecodeJpeg(ILjava/lang/String;[BLjava/lang/String;II)I
.end method

.method private final native nativeDecodePostview(ILjava/lang/String;[I[I[I[I[I)I
.end method

.method private final native nativeEnd(I)I
.end method

.method private final native nativeFinish(I)I
.end method

.method private final native nativeGetBoundingRect(I[I)I
.end method

.method private final native nativeGetClippingRect(I[I)I
.end method

.method private static final native nativeGetContentType(Ljava/lang/String;)I
.end method

.method private final native nativeGetGalleryDataOfAppSeg(I[B)I
.end method

.method private final native nativeGetGuideType(I[I)I
.end method

.method private final native nativeGetImage(I[BIIII)I
.end method

.method private final native nativeGetIsShootable(I[I)I
.end method

.method private final native nativeGetIsStop(I[I)I
.end method

.method private final native nativeGetPostviewParam(ILcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;)I
.end method

.method private final native nativeGetPreviewImage(III[B[B)I
.end method

.method private final native nativeGetProjectionType(I[I)I
.end method

.method private final native nativeGetUseSensorAssist(II[I)I
.end method

.method private final native nativeGetUsedHeapSize(I[I)I
.end method

.method private static final native nativeGetVersion()Ljava/lang/String;
.end method

.method private final native nativeInitialize(ILcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;[I)I
.end method

.method private final native nativeRegisterStillImage(I[BIILjava/lang/String;)I
.end method

.method private final native nativeReleaseRegisteredImage(I)I
.end method

.method private final native nativeRenderPostview(IDDDI)I
.end method

.method private final native nativeRenderPostviewDefault(II)I
.end method

.method private final native nativeRenderPreview(I[BIII)I
.end method

.method private final native nativeSaveJpeg(ILjava/lang/String;[BLjava/lang/String;III)I
.end method

.method private final native nativeSaveOutputJpeg(ILjava/lang/String;IIIII[ILjava/lang/String;Ljava/lang/String;Z)I
.end method

.method private final native nativeSetAngleMatrix(I[DI)I
.end method

.method private final native nativeSetGalleryData(ILcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$GalleryData;II)I
.end method

.method private final native nativeSetGuideType(II)I
.end method

.method private final native nativeSetListenerFromNative(ILandroid/app/Activity;)I
.end method

.method private final native nativeSetMotionlessThreshold(II)I
.end method

.method private final native nativeSetPostviewData(III)I
.end method

.method private final native nativeSetPostviewParam(ILcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;)I
.end method

.method private final native nativeSetProjectionType(II)I
.end method

.method private final native nativeSetTextureShrinkRatio(II)I
.end method

.method private final native nativeSetUseReplayMode(II)I
.end method

.method private final native nativeSetUseSensorAssist(III)I
.end method

.method private final native nativeSetUseSensorThreshold(II)I
.end method

.method private final native nativeSetUseThreshold(II)I
.end method

.method private final native nativeStart(II)I
.end method

.method private final native nativereReRegisterTexture(I)I
.end method


# virtual methods
.method public attach([BI[I[I)I
    .locals 7
    .parameter "input_image"
    .parameter "use_image"
    .parameter "image_id"
    .parameter "status"

    .prologue
    .line 289
    const/4 v6, 0x0

    .line 291
    .local v6, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeAttach(I[BI[I[I)I

    move-result v6

    .line 297
    :goto_0
    return v6

    .line 294
    :cond_0
    const v6, -0x7ffffffe

    goto :goto_0
.end method

.method public decodeJpeg(Ljava/lang/String;[BLjava/lang/String;II)I
    .locals 8
    .parameter "path"
    .parameter "output_data"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 789
    const/4 v7, 0x0

    .line 791
    .local v7, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 792
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeDecodeJpeg(ILjava/lang/String;[BLjava/lang/String;II)I

    move-result v7

    .line 796
    :goto_0
    return v7

    .line 794
    :cond_0
    const v7, -0x7ffffffe

    goto :goto_0
.end method

.method public decodePostview(Ljava/lang/String;[I[I[I[I[I)I
    .locals 9
    .parameter "path"
    .parameter "out_width"
    .parameter "out_height"
    .parameter "exif_orientation"
    .parameter "postview_data_size"
    .parameter "gallery_data_size"

    .prologue
    .line 729
    const/4 v8, 0x0

    .line 731
    .local v8, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeDecodePostview(ILjava/lang/String;[I[I[I[I[I)I

    move-result v8

    .line 737
    :goto_0
    return v8

    .line 734
    :cond_0
    const v8, -0x7ffffffe

    goto :goto_0
.end method

.method public end()I
    .locals 4

    .prologue
    .line 301
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MorphoImageStitcher end Start mIsInitialized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mIsInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x0

    .line 304
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeEnd(I)I

    move-result v0

    .line 310
    :goto_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MorphoImageStitcher end End ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    return v0

    .line 307
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public finish()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 256
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MorphoImageStitcher finish Start mIsInitialized="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mIsInitialized:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x0

    .line 260
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mFinished:Z

    .line 262
    iget-boolean v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mIsInitialized:Z

    if-eqz v1, :cond_0

    .line 263
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeFinish(I)I

    move-result v0

    .line 265
    :cond_0
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->deleteNativeObject(I)V

    .line 266
    iput v4, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    .line 267
    iput-boolean v4, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mIsInitialized:Z

    .line 272
    :goto_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MorphoImageStitcher finish End ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return v0

    .line 269
    :cond_1
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getBoundingRect(Landroid/graphics/Rect;)I
    .locals 7
    .parameter "rect"

    .prologue
    const/4 v6, 0x0

    .line 387
    const/4 v1, 0x0

    .line 388
    .local v1, ret:I
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 390
    .local v0, rect_info:[I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 391
    iget v2, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v2, v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetBoundingRect(I[I)I

    move-result v1

    .line 392
    if-nez v1, :cond_0

    .line 393
    aget v2, v0, v6

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 402
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 403
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 406
    :cond_1
    return v1

    .line 399
    :cond_2
    const v1, -0x7ffffffe

    goto :goto_0
.end method

.method public getClippingRect(Landroid/graphics/Rect;)I
    .locals 7
    .parameter "rect"

    .prologue
    const/4 v6, 0x0

    .line 410
    const/4 v1, 0x0

    .line 411
    .local v1, ret:I
    const/4 v2, 0x4

    new-array v0, v2, [I

    .line 413
    .local v0, rect_info:[I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 414
    iget v2, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v2, v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetClippingRect(I[I)I

    move-result v1

    .line 415
    if-nez v1, :cond_0

    .line 416
    aget v2, v0, v6

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v4, v0, v4

    const/4 v5, 0x3

    aget v5, v0, v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 425
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 426
    invoke-virtual {p1, v6, v6, v6, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 429
    :cond_1
    return v1

    .line 422
    :cond_2
    const v1, -0x7ffffffe

    goto :goto_0
.end method

.method public getGalleryDataOfAppSeg([B)I
    .locals 2
    .parameter "gallery_data"

    .prologue
    .line 741
    const/4 v0, 0x0

    .line 743
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetGalleryDataOfAppSeg(I[B)I

    move-result v0

    .line 749
    :goto_0
    return v0

    .line 746
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getGuideType([I)I
    .locals 2
    .parameter "guide_type"

    .prologue
    .line 433
    const/4 v0, 0x0

    .line 435
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetGuideType(I[I)I

    move-result v0

    .line 441
    :goto_0
    return v0

    .line 438
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getImage([BLandroid/graphics/Rect;)I
    .locals 8
    .parameter "output_image"
    .parameter "rect"

    .prologue
    .line 315
    const/4 v7, 0x0

    .line 317
    .local v7, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetImage(I[BIIII)I

    move-result v7

    .line 323
    :goto_0
    return v7

    .line 320
    :cond_0
    const v7, -0x7ffffffe

    goto :goto_0
.end method

.method public getIsShootable([I)I
    .locals 2
    .parameter "is_shootable"

    .prologue
    .line 681
    const/4 v0, 0x0

    .line 683
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 684
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetIsShootable(I[I)I

    move-result v0

    .line 689
    :goto_0
    return v0

    .line 686
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getIsStop([I)I
    .locals 2
    .parameter "is_stop"

    .prologue
    .line 669
    const/4 v0, 0x0

    .line 671
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetIsStop(I[I)I

    move-result v0

    .line 677
    :goto_0
    return v0

    .line 674
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getPostviewParam(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;)I
    .locals 2
    .parameter "param"
    .parameter "def_param"

    .prologue
    .line 693
    const/4 v0, 0x0

    .line 695
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetPostviewParam(ILcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;)I

    move-result v0

    .line 701
    :goto_0
    return v0

    .line 698
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getPreviewImage(II[B[B)I
    .locals 7
    .parameter "output_width"
    .parameter "output_height"
    .parameter "output_image"
    .parameter "input_image"

    .prologue
    .line 375
    const/4 v6, 0x0

    .line 377
    .local v6, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetPreviewImage(III[B[B)I

    move-result v6

    .line 383
    :goto_0
    return v6

    .line 380
    :cond_0
    const v6, -0x7ffffffe

    goto :goto_0
.end method

.method public getProjectionType([I)I
    .locals 2
    .parameter "projection_type"

    .prologue
    .line 445
    const/4 v0, 0x0

    .line 447
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetProjectionType(I[I)I

    move-result v0

    .line 453
    :goto_0
    return v0

    .line 450
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getUseSensorAssist(I[I)I
    .locals 2
    .parameter "use_case"
    .parameter "enable"

    .prologue
    .line 469
    const/4 v0, 0x0

    .line 471
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetUseSensorAssist(II[I)I

    move-result v0

    .line 477
    :goto_0
    return v0

    .line 474
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public getUsedHeapSize([I)I
    .locals 2
    .parameter "used_heap_size"

    .prologue
    .line 457
    const/4 v0, 0x0

    .line 459
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 460
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeGetUsedHeapSize(I[I)I

    move-result v0

    .line 465
    :goto_0
    return v0

    .line 462
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public initialize(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;[I)I
    .locals 4
    .parameter "param"
    .parameter "buffer_size"

    .prologue
    .line 230
    const-string v1, "CameraApp"

    const-string v2, "MorphoImageStitcher initialize Start"

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x0

    .line 233
    .local v0, ret:I
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    if-lez v1, :cond_1

    .line 234
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeInitialize(ILcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;[I)I

    move-result v0

    .line 239
    :goto_0
    if-nez v0, :cond_0

    .line 240
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mIsInitialized:Z

    .line 243
    :cond_0
    const-string v1, "CameraApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MorphoImageStitcher initialize End ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    return v0

    .line 236
    :cond_1
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mFinished:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mIsInitialized:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x1

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reRegisterTexture()I
    .locals 2

    .prologue
    .line 363
    const/4 v0, 0x0

    .line 365
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativereReRegisterTexture(I)I

    move-result v0

    .line 371
    :goto_0
    return v0

    .line 368
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public registerStillImage([BIILjava/lang/String;)I
    .locals 7
    .parameter "still_image"
    .parameter "img_id"
    .parameter "format"
    .parameter "path"

    .prologue
    .line 717
    const/4 v6, 0x0

    .line 719
    .local v6, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeRegisterStillImage(I[BIILjava/lang/String;)I

    move-result v6

    .line 725
    :goto_0
    return v6

    .line 722
    :cond_0
    const v6, -0x7ffffffe

    goto :goto_0
.end method

.method public releaseRegisteredImage()I
    .locals 5

    .prologue
    .line 640
    const/4 v1, 0x0

    .line 643
    .local v1, ret:I
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 644
    iget v2, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v2}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeReleaseRegisteredImage(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 653
    :goto_0
    return v1

    .line 646
    :cond_0
    const v1, -0x7ffffffe

    goto :goto_0

    .line 648
    :catch_0
    move-exception v0

    .line 649
    .local v0, e:Ljava/lang/Exception;
    const v1, -0x7ffffffe

    .line 650
    const-string v2, "CameraApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MorphoImageStitcher : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lge/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public renderPostview(DDDI)I
    .locals 10
    .parameter "x_rotate"
    .parameter "y_rotate"
    .parameter "scale"
    .parameter "disp_type"

    .prologue
    .line 339
    const/4 v9, 0x0

    .line 341
    .local v9, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeRenderPostview(IDDDI)I

    move-result v9

    .line 347
    :goto_0
    return v9

    .line 344
    :cond_0
    const v9, -0x7ffffffe

    goto :goto_0
.end method

.method public renderPostviewDefault(I)I
    .locals 2
    .parameter "disp_type"

    .prologue
    .line 351
    const/4 v0, 0x0

    .line 353
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeRenderPostviewDefault(II)I

    move-result v0

    .line 359
    :goto_0
    return v0

    .line 356
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public renderPreview([BIII)I
    .locals 7
    .parameter "input_img"
    .parameter "image_id"
    .parameter "disp_type"
    .parameter "rotation"

    .prologue
    .line 327
    const/4 v6, 0x0

    .line 329
    .local v6, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeRenderPreview(I[BIII)I

    move-result v6

    .line 335
    :goto_0
    return v6

    .line 332
    :cond_0
    const v6, -0x7ffffffe

    goto :goto_0
.end method

.method public saveJpeg(Ljava/lang/String;[BLjava/lang/String;III)I
    .locals 9
    .parameter "path"
    .parameter "raw_data"
    .parameter "format"
    .parameter "width"
    .parameter "height"
    .parameter "orientation"

    .prologue
    .line 777
    const/4 v8, 0x0

    .line 779
    .local v8, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSaveJpeg(ILjava/lang/String;[BLjava/lang/String;III)I

    move-result v8

    .line 785
    :goto_0
    return v8

    .line 782
    :cond_0
    const v8, -0x7ffffffe

    goto :goto_0
.end method

.method public saveOutputJpeg(Ljava/lang/String;Landroid/graphics/Rect;I[ILjava/lang/String;Ljava/lang/String;Z)I
    .locals 13
    .parameter "path"
    .parameter "rect"
    .parameter "orientation"
    .parameter "output_size"
    .parameter "first_date"
    .parameter "last_date"
    .parameter "addGallerySeg"

    .prologue
    .line 765
    const/4 v12, 0x0

    .line 767
    .local v12, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    iget v6, p2, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    move-object v2, p1

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSaveOutputJpeg(ILjava/lang/String;IIIII[ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v12

    .line 773
    :goto_0
    return v12

    .line 770
    :cond_0
    const v12, -0x7ffffffe

    goto :goto_0
.end method

.method public setAngleMatrix([DI)I
    .locals 2
    .parameter "matrix"
    .parameter "sensor_type"

    .prologue
    .line 573
    const/4 v0, 0x0

    .line 575
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 576
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetAngleMatrix(I[DI)I

    move-result v0

    .line 581
    :goto_0
    return v0

    .line 578
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setGalleryData(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$GalleryData;II)I
    .locals 2
    .parameter "gallery_data"
    .parameter "rotation"
    .parameter "render_low_image"

    .prologue
    .line 597
    const/4 v0, 0x0

    .line 599
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 600
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetGalleryData(ILcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$GalleryData;II)I

    move-result v0

    .line 605
    :goto_0
    return v0

    .line 602
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setGuideType(I)I
    .locals 2
    .parameter "guide_type"

    .prologue
    .line 497
    const/4 v0, 0x0

    .line 499
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetGuideType(II)I

    move-result v0

    .line 505
    :goto_0
    return v0

    .line 502
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setListenerFromNative(Landroid/app/Activity;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 753
    const/4 v0, 0x0

    .line 755
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 756
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetListenerFromNative(ILandroid/app/Activity;)I

    move-result v0

    .line 761
    :goto_0
    return v0

    .line 758
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setMotionlessThreshold(I)I
    .locals 2
    .parameter "motionless_threshold"

    .prologue
    .line 537
    const/4 v0, 0x0

    .line 539
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetMotionlessThreshold(II)I

    move-result v0

    .line 545
    :goto_0
    return v0

    .line 542
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setPostviewData(II)I
    .locals 2
    .parameter "rotation"
    .parameter "render_low_image"

    .prologue
    .line 585
    const/4 v0, 0x0

    .line 587
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 588
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetPostviewData(III)I

    move-result v0

    .line 593
    :goto_0
    return v0

    .line 590
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setPostviewParam(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;)I
    .locals 2
    .parameter "param"
    .parameter "def_param"

    .prologue
    .line 705
    const/4 v0, 0x0

    .line 707
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 708
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetPostviewParam(ILcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$ViewParam;)I

    move-result v0

    .line 713
    :goto_0
    return v0

    .line 710
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setProjectionType(I)I
    .locals 2
    .parameter "projection_type"

    .prologue
    .line 509
    const/4 v0, 0x0

    .line 511
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetProjectionType(II)I

    move-result v0

    .line 517
    :goto_0
    return v0

    .line 514
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setTextureShrinkRatio(I)I
    .locals 2
    .parameter "ratio"

    .prologue
    .line 628
    const/4 v0, 0x0

    .line 630
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetTextureShrinkRatio(II)I

    move-result v0

    .line 636
    :goto_0
    return v0

    .line 633
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseReplayMode(I)I
    .locals 2
    .parameter "enable"

    .prologue
    .line 657
    const/4 v0, 0x0

    .line 659
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetUseReplayMode(II)I

    move-result v0

    .line 665
    :goto_0
    return v0

    .line 662
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseSensorAssist(II)I
    .locals 2
    .parameter "use_case"
    .parameter "enable"

    .prologue
    .line 609
    const/4 v0, 0x0

    .line 611
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1, p2}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetUseSensorAssist(III)I

    move-result v0

    .line 617
    :goto_0
    return v0

    .line 614
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseSensorThreshold(I)I
    .locals 2
    .parameter "use_sensor_threshold"

    .prologue
    .line 561
    const/4 v0, 0x0

    .line 563
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 564
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetUseSensorThreshold(II)I

    move-result v0

    .line 569
    :goto_0
    return v0

    .line 566
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public setUseThreshold(I)I
    .locals 2
    .parameter "use_threshold"

    .prologue
    .line 549
    const/4 v0, 0x0

    .line 551
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeSetUseThreshold(II)I

    move-result v0

    .line 557
    :goto_0
    return v0

    .line 554
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method

.method public start(I)I
    .locals 2
    .parameter "use_only_preview"

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 279
    .local v0, ret:I
    invoke-virtual {p0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 280
    iget v1, p0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->mNative:I

    invoke-direct {p0, v1, p1}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->nativeStart(II)I

    move-result v0

    .line 285
    :goto_0
    return v0

    .line 282
    :cond_0
    const v0, -0x7ffffffe

    goto :goto_0
.end method
