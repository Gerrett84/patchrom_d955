.class public Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;
.super Ljava/lang/Object;
.source "FreePanoramaPreviewCallback.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;
    }
.end annotation


# instance fields
.field private final BOUNDARY_DIFF_ANGLE:F

.field private mAngleOfViewDegree:D

.field private mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

.field private mGyroMatrix:[D

.field private mMaxHeapSize:[I

.field private mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

.field private mPanoramaPreviewCount:I

.field private mPanoramaProcessCount:I

.field private mPrevSensorMat:[D

.field private mRVMatrix:[D

.field private mStatus:[I

.field private mTimeCurrentFrame:J

.field private mTimeFrameInterval:J

.field private mTimePreFrame:J

.field private mUseImage:[I

.field private mUseStillImage:Z


# direct methods
.method public constructor <init>(Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;)V
    .locals 5
    .parameter "function"

    .prologue
    const-wide/16 v3, 0x0

    const/16 v2, 0x9

    const/4 v1, 0x1

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGyroMatrix:[D

    .line 52
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mRVMatrix:[D

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mUseStillImage:Z

    .line 66
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mMaxHeapSize:[I

    .line 71
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mStatus:[I

    .line 79
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mUseImage:[I

    .line 87
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPrevSensorMat:[D

    .line 88
    const-wide/high16 v0, 0x3ff0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->BOUNDARY_DIFF_ANGLE:F

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mAngleOfViewDegree:D

    .line 93
    iput-wide v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mTimePreFrame:J

    .line 94
    iput-wide v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mTimeFrameInterval:J

    .line 95
    iput-wide v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mTimeCurrentFrame:J

    .line 47
    iput-object p1, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    .line 48
    new-instance v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    invoke-direct {v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;-><init>()V

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    .line 49
    return-void
.end method

.method private calcAngleOfViewDegree(FF)D
    .locals 6
    .parameter "h_view_angle"
    .parameter "v_view_angle"

    .prologue
    .line 407
    mul-float v2, p1, p1

    mul-float v3, p2, p2

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    float-to-double v0, v2

    .line 408
    .local v0, value:D
    const/high16 v2, 0x4180

    div-float v2, p1, v2

    const/high16 v3, 0x4110

    div-float v3, p2, v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 409
    const-wide v2, 0x406c200000000000L

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide v4, 0x4075100000000000L

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    .line 411
    :cond_0
    return-wide v0
.end method

.method private checkAngleDiff([D[DD)Z
    .locals 5
    .parameter "cur_mat"
    .parameter "prev_mat"
    .parameter "abs_boundary_angle"

    .prologue
    .line 423
    const/4 v3, 0x3

    new-array v0, v3, [D

    .line 425
    .local v0, diff:[D
    const/4 v2, 0x1

    .line 426
    .local v2, ret:Z
    invoke-static {v0, p1, p2}, Lcom/lge/morpho/app/morphopanorama/MathUtil;->getAngleDiff([D[D[D)V

    .line 427
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 428
    aget-wide v3, v0, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v3, v3, p3

    if-lez v3, :cond_0

    .line 429
    const/4 v2, 0x0

    .line 427
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 432
    :cond_1
    return v2
.end method

.method private initFrameShape()V
    .locals 9

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0243

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    int-to-float v7, v0

    .line 149
    .local v7, frameWidth:F
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0244

    invoke-static {v0, v1}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    int-to-float v8, v0

    .line 151
    .local v8, registeredFrameWidth:F
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v1, v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->wire_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setFrameShape(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;FFFFF)V

    .line 153
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v1, v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->preview_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    move-object v0, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setFrameShape(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;FFFFF)V

    .line 155
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v1, v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->effective_input_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    move-object v0, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setFrameShape(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;FFFFF)V

    .line 157
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v1, v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->state_warning_need_to_stop_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    move-object v0, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setFrameShape(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;FFFFF)V

    .line 159
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v1, v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->state_info_stitchable_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    move-object v0, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setFrameShape(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;FFFFF)V

    .line 161
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v1, v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->state_warning_toofast_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    move-object v0, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setFrameShape(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;FFFFF)V

    .line 163
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v1, v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->state_warning_toofar_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    move-object v0, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setFrameShape(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;FFFFF)V

    .line 165
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v1, v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->state_error_alignment_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    move-object v0, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setFrameShape(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;FFFFF)V

    .line 168
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v1, v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->guide_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    const v2, 0x3c807fed

    const v3, 0x3f41c1c6

    const v4, 0x3f6dedf2

    const/high16 v5, 0x3f80

    move-object v0, p0

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setFrameShape(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;FFFFF)V

    .line 170
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v1, v0, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->registered_frame_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;

    const v2, 0x3f666666

    const v3, 0x3f666666

    const v4, 0x3f666666

    const/high16 v5, 0x3f80

    move-object v0, p0

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->setFrameShape(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;FFFFF)V

    .line 172
    return-void
.end method

.method private isStopPanoramaShooting(I)Z
    .locals 2
    .parameter "attach_status"

    .prologue
    const/4 v0, 0x1

    .line 394
    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 403
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private panorama_initParam()V
    .locals 15

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 175
    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iput v12, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->mode:I

    .line 176
    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iput v11, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->render_mode:I

    .line 177
    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-wide v13, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mAngleOfViewDegree:D

    iput-wide v13, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->input_angle_of_view_degree:D

    .line 178
    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v13, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v13}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getPreviewSize()[I

    move-result-object v13

    aget v13, v13, v12

    iput v13, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->input_width:I

    .line 179
    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v13, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v13}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getPreviewSize()[I

    move-result-object v13

    aget v13, v13, v11

    iput v13, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->input_height:I

    .line 180
    iget-object v13, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-boolean v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mUseStillImage:Z

    if-eqz v10, :cond_0

    move v10, v11

    :goto_0
    iput v10, v13, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->use_still_capture:I

    .line 181
    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v13, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v13}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v13

    invoke-virtual {v13}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v13

    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v13

    iget v13, v13, Landroid/hardware/Camera$Size;->width:I

    iput v13, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->still_width:I

    .line 182
    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v13, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v13}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v13

    invoke-virtual {v13}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v13

    invoke-virtual {v13}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v13

    iget v13, v13, Landroid/hardware/Camera$Size;->height:I

    iput v13, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->still_height:I

    .line 183
    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-wide v13, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mAngleOfViewDegree:D

    iput-wide v13, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->still_angle_of_view_degree:D

    .line 184
    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    const-string v13, "YVU420_SEMIPLANAR"

    iput-object v13, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->format:Ljava/lang/String;

    .line 185
    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iput v12, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->alpha_blending_image_frame:I

    .line 186
    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iput v11, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->gradually_disp_guide_frame:I

    .line 187
    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iput v11, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->fix_current_image:I

    .line 188
    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iput v12, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->disp_current_image:I

    .line 189
    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iput v11, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->blink_preview_mode:I

    .line 190
    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iput v11, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->version:I

    .line 191
    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iput v12, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->mask_poles:I

    .line 202
    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v10}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a0008

    invoke-static {v10, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v1

    .line 203
    .local v1, disp_w:I
    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v10}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f0a0009

    invoke-static {v10, v11}, Lcom/lge/camera/util/Common;->getPixelFromDimens(Landroid/content/Context;I)I

    move-result v0

    .line 205
    .local v0, disp_h:I
    if-le v1, v0, :cond_1

    int-to-double v6, v0

    .line 206
    .local v6, ss:D
    :goto_1
    if-le v1, v0, :cond_2

    int-to-double v2, v1

    .line 207
    .local v2, ls:D
    :goto_2
    const-wide/high16 v8, 0x4054

    .line 208
    .local v8, ss_fov:D
    mul-double v10, v8, v2

    div-double v4, v10, v6

    .line 209
    .local v4, ls_fov:D
    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    mul-double v11, v4, v4

    mul-double v13, v8, v8

    add-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v11, v11

    iput v11, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->angle_fov:I

    .line 210
    const-string v10, "CameraApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "angle_fov="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget v12, v12, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->angle_fov:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " disp_w h ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v10, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->bg_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$BgColor;

    const v11, 0x3e58d8ed

    iput v11, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$BgColor;->R:F

    .line 213
    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v10, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->bg_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$BgColor;

    const v11, 0x3e6ced0b

    iput v11, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$BgColor;->G:F

    .line 214
    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v10, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->bg_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$BgColor;

    const v11, 0x3e78f8e8

    iput v11, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$BgColor;->B:F

    .line 215
    iget-object v10, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v10, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;->bg_color:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$BgColor;

    const/4 v11, 0x0

    iput v11, v10, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$BgColor;->A:F

    .line 216
    return-void

    .end local v0           #disp_h:I
    .end local v1           #disp_w:I
    .end local v2           #ls:D
    .end local v4           #ls_fov:D
    .end local v6           #ss:D
    .end local v8           #ss_fov:D
    :cond_0
    move v10, v12

    .line 180
    goto/16 :goto_0

    .line 205
    .restart local v0       #disp_h:I
    .restart local v1       #disp_w:I
    :cond_1
    int-to-double v6, v1

    goto :goto_1

    .line 206
    .restart local v6       #ss:D
    :cond_2
    int-to-double v2, v0

    goto :goto_2
.end method

.method private panorama_initStitcher()Z
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 219
    const/4 v0, 0x1

    .line 220
    .local v0, isSuccess:Z
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v4}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    iget-object v6, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mMaxHeapSize:[I

    invoke-virtual {v4, v5, v6}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->initialize(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;[I)I

    move-result v4

    const-string v5, "mMorphoImageStitcher.initialize error ret:"

    invoke-interface {v3, v4, v5, v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    move-result v0

    .line 222
    if-nez v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return v1

    .line 225
    :cond_1
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v4}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->setProjectionType(I)I

    move-result v4

    const-string v5, "mMorphoImageStitcher.setProjectionType error ret:"

    invoke-interface {v3, v4, v5, v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    move-result v0

    .line 227
    if-eqz v0, :cond_0

    .line 230
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v4}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->setGuideType(I)I

    move-result v4

    const-string v5, "mMorphoImageStitcher.setGuideType error ret:"

    invoke-interface {v3, v4, v5, v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    move-result v0

    .line 232
    if-eqz v0, :cond_0

    .line 235
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v4}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v4

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->setMotionlessThreshold(I)I

    move-result v4

    const-string v5, "mMorphoImageStitcher.setMotionlessThreshold error ret:"

    invoke-interface {v3, v4, v5, v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    move-result v0

    .line 237
    if-eqz v0, :cond_0

    .line 240
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v4}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->setUseThreshold(I)I

    move-result v4

    const-string v5, "mMorphoImageStitcher.setUseThreshold error ret:"

    invoke-interface {v3, v4, v5, v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    move-result v0

    .line 242
    if-eqz v0, :cond_0

    .line 245
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v4}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->setUseSensorAssist(II)I

    move-result v4

    const-string v5, "mMorphoImageStitcher.setUseSensorAssist error ret:"

    invoke-interface {v3, v4, v5, v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    move-result v0

    .line 247
    if-eqz v0, :cond_0

    .line 250
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v4}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v4

    invoke-virtual {v4, v2, v2}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->setUseSensorAssist(II)I

    move-result v4

    const-string v5, "mMorphoImageStitcher.setUseSensorAssist error ret:"

    invoke-interface {v3, v4, v5, v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    move-result v0

    .line 252
    if-eqz v0, :cond_0

    .line 255
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v4}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v4

    const/16 v5, 0x320

    invoke-virtual {v4, v5}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->setUseSensorThreshold(I)I

    move-result v4

    const-string v5, "mMorphoImageStitcher.setUseSensorThreshold error ret:"

    invoke-interface {v3, v4, v5, v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    move-result v0

    .line 257
    if-eqz v0, :cond_0

    .line 260
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v4}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->setTextureShrinkRatio(I)I

    move-result v4

    const-string v5, "mMorphoImageStitcher.setTextureShrinkRatio error ret:"

    invoke-interface {v3, v4, v5, v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    move-result v0

    .line 262
    if-eqz v0, :cond_0

    move v1, v2

    .line 266
    goto/16 :goto_0
.end method

.method private printFrameInterval(Z)V
    .locals 0
    .parameter "setCurrentTime"

    .prologue
    .line 299
    return-void
.end method

.method private resetProcessingTimeInfo()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 350
    iput-wide v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mTimePreFrame:J

    .line 351
    iput-wide v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mTimeFrameInterval:J

    .line 352
    iput-wide v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mTimeCurrentFrame:J

    .line 353
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getRenderer()Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->resetMesureInfo()V

    .line 354
    return-void
.end method

.method private setFrameShape(Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;FFFFF)V
    .locals 0
    .parameter "frame"
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"
    .parameter "width"

    .prologue
    .line 136
    iput p2, p1, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;->R:F

    .line 137
    iput p3, p1, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;->G:F

    .line 138
    iput p4, p1, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;->B:F

    .line 139
    iput p5, p1, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;->A:F

    .line 140
    iput p6, p1, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$FrameColor;->Width:F

    .line 141
    return-void
.end method


# virtual methods
.method public getMaxHeapSize()I
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mMaxHeapSize:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getStatus()[I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mStatus:[I

    return-object v0
.end method

.method public getUseImage()[I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mUseImage:[I

    return-object v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4
    .parameter "cameraOutputRaw"
    .parameter "camera"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getFinishFlg()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getPanoramaState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v0

    if-nez v0, :cond_2

    .line 105
    :cond_0
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPreviewCallback mFinishFlg, getPanoramaState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getFinishFlg()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getPanoramaState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_1
    :goto_0
    return-void

    .line 110
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getPanoramaEngineState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 112
    :pswitch_1
    invoke-virtual {p0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->panorama_initialize()V

    .line 113
    iput v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaPreviewCount:I

    .line 114
    iput v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaProcessCount:I

    goto :goto_0

    .line 117
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->panorama_preview([B)V

    .line 118
    iget v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaPreviewCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaPreviewCount:I

    goto :goto_0

    .line 121
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->panorama_process([B)V

    .line 122
    iget v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaProcessCount:I

    if-ge v0, v3, :cond_1

    .line 123
    iget v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaProcessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaProcessCount:I

    .line 124
    iget v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaProcessCount:I

    if-ne v0, v3, :cond_1

    .line 125
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->setPanoramaState(I)V

    .line 126
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->setShutterButtonImage(Z)V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public panorama_initialize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 270
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0, v3}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->setPanoramaEngineState(I)V

    .line 271
    invoke-direct {p0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->panorama_initParam()V

    .line 272
    invoke-direct {p0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->initFrameShape()V

    .line 273
    invoke-direct {p0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->panorama_initStitcher()Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    const-string v0, "CameraApp"

    const-string v1, "init fail and exit"

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->start(I)I

    move-result v1

    const-string v2, "mMorphoImageStitcher.start error ret:"

    invoke-interface {v0, v1, v2, v3}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    .line 281
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mUseImage:[I

    aput v4, v0, v4

    .line 283
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getCameraBuff()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0
.end method

.method public panorama_preview([B)V
    .locals 10
    .parameter "cameraOutputRaw"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 303
    invoke-direct {p0, v1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->printFrameInterval(Z)V

    .line 305
    iget v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaPreviewCount:I

    if-nez v2, :cond_4

    move v8, v1

    .line 306
    .local v8, isFirst:Z
    :goto_0
    if-eqz v8, :cond_0

    .line 307
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mStatus:[I

    aput v0, v2, v0

    .line 308
    invoke-direct {p0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->resetProcessingTimeInfo()V

    .line 311
    :cond_0
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getSensorLockObj()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 312
    const/4 v3, 0x0

    .line 313
    .local v3, g_mat:[D
    const/4 v4, 0x0

    .line 315
    .local v4, rv_mat:[D
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->isUseSensor()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 316
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    move-result-object v2

    iget-object v5, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGyroMatrix:[D

    iget-object v6, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mRVMatrix:[D

    invoke-virtual {v2, v5, v6}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getSensorMatrix([D[D)V

    .line 317
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGyroMatrix:[D

    .line 318
    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mRVMatrix:[D

    .line 321
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v5, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v5}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getCameraBuffID()I

    move-result v5

    if-ne v5, v1, :cond_5

    :goto_1
    invoke-interface {v2, v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->setCameraBuffID(I)V

    .line 322
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getCameraBuff()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 323
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getRenderer()Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setRenderInfo([BLjava/util/ArrayList;[D[DII)V

    .line 324
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getGLPanoramaView()Landroid/opengl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 326
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getPanoramaState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getWaitTime()I

    move-result v0

    const/16 v1, 0xbb8

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getWaitTime()I

    move-result v0

    if-ltz v0, :cond_3

    .line 329
    if-eqz v3, :cond_3

    .line 330
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPrevSensorMat:[D

    iget v1, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->BOUNDARY_DIFF_ANGLE:F

    float-to-double v1, v1

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->checkAngleDiff([D[DD)Z

    move-result v7

    .line 331
    .local v7, check:Z
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPrevSensorMat:[D

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPrevSensorMat:[D

    array-length v5, v5

    invoke-static {v3, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    if-nez v7, :cond_3

    .line 334
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->setWaitTime(I)V

    .line 335
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getGyroscope()Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 336
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getGyroscopeValueList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 338
    :cond_2
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->setSensorCorrectionGuideCounter(I)V

    .line 339
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoSensorFusion()Lcom/lge/morpho/core/MorphoSensorFusion;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lge/morpho/core/MorphoSensorFusion;->setAppState(I)I

    .line 340
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoSensorFusion()Lcom/lge/morpho/core/MorphoSensorFusion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lge/morpho/core/MorphoSensorFusion;->calc()I

    .line 346
    .end local v7           #check:Z
    :cond_3
    monitor-exit v9

    .line 347
    return-void

    .end local v3           #g_mat:[D
    .end local v4           #rv_mat:[D
    .end local v8           #isFirst:Z
    :cond_4
    move v8, v0

    .line 305
    goto/16 :goto_0

    .restart local v3       #g_mat:[D
    .restart local v4       #rv_mat:[D
    .restart local v8       #isFirst:Z
    :cond_5
    move v0, v1

    .line 321
    goto/16 :goto_1

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public panorama_process([B)V
    .locals 9
    .parameter "cameraOutputRaw"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 361
    iget v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaProcessCount:I

    if-nez v2, :cond_2

    move v7, v1

    .line 364
    .local v7, isFirst:Z
    :goto_0
    if-eqz v7, :cond_0

    .line 365
    invoke-direct {p0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->resetProcessingTimeInfo()V

    .line 366
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v5, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v5}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->end()I

    move-result v5

    const-string v6, "mMorphoImageStitcher.start error ret:"

    invoke-interface {v2, v5, v6, v1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    .line 367
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v5, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v5}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getMorphoImageStitcher()Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher;->start(I)I

    move-result v5

    const-string v6, "mMorphoImageStitcher.start error ret:"

    invoke-interface {v2, v5, v6, v1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->checkOK(ILjava/lang/String;Z)Z

    .line 370
    :cond_0
    invoke-direct {p0, v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->printFrameInterval(Z)V

    .line 372
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getSensorLockObj()Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    .line 373
    const/4 v3, 0x0

    .line 374
    .local v3, g_mat:[D
    const/4 v4, 0x0

    .line 375
    .local v4, rv_mat:[D
    :try_start_0
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->isUseSensor()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 376
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getSensorListener()Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;

    move-result-object v2

    iget-object v5, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGyroMatrix:[D

    iget-object v6, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mRVMatrix:[D

    invoke-virtual {v2, v5, v6}, Lcom/lge/camera/listeners/FreePanoramaSensorEventListener;->getSensorMatrix([D[D)V

    .line 377
    iget-object v3, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGyroMatrix:[D

    .line 378
    iget-object v4, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mRVMatrix:[D

    .line 382
    :cond_1
    iget-object v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    iget-object v5, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v5}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getCameraBuffID()I

    move-result v5

    if-ne v5, v1, :cond_3

    :goto_1
    invoke-interface {v2, v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->setCameraBuffID(I)V

    .line 383
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mStatus:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->isStopPanoramaShooting(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 384
    monitor-exit v8

    .line 391
    :goto_2
    return-void

    .end local v3           #g_mat:[D
    .end local v4           #rv_mat:[D
    .end local v7           #isFirst:Z
    :cond_2
    move v7, v0

    .line 361
    goto :goto_0

    .restart local v3       #g_mat:[D
    .restart local v4       #rv_mat:[D
    .restart local v7       #isFirst:Z
    :cond_3
    move v0, v1

    .line 382
    goto :goto_1

    .line 386
    :cond_4
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getCameraDevice()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v1}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getCameraBuff()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 387
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getRenderer()Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, -0x1

    iget v6, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaProcessCount:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/lge/morpho/app/morphopanorama/PanoramaViewRenderer;->setRenderInfo([BLjava/util/ArrayList;[D[DII)V

    .line 388
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mGet:Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;

    invoke-interface {v0}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback$FreePanoramaPreviewCallbackFunction;->getGLPanoramaView()Landroid/opengl/GLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 390
    monitor-exit v8

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resetCount()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaPreviewCount:I

    .line 58
    iput v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaProcessCount:I

    .line 59
    return-void
.end method

.method public setAngleOfViewDegree(FF)V
    .locals 4
    .parameter "viewAngleH"
    .parameter "viewAngleV"

    .prologue
    .line 415
    invoke-direct {p0, p1, p2}, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->calcAngleOfViewDegree(FF)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mAngleOfViewDegree:D

    .line 416
    iget-wide v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mAngleOfViewDegree:D

    const-wide/high16 v2, 0x4034

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x405e

    iget-wide v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mAngleOfViewDegree:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 417
    :cond_0
    const-wide/high16 v0, 0x404e

    iput-wide v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mAngleOfViewDegree:D

    .line 419
    :cond_1
    const-string v0, "CameraApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAngleOfViewDegree="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mAngleOfViewDegree:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lge/camera/util/CamLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public setStatus(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mStatus:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 77
    return-void
.end method

.method public setUseImage(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mUseImage:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 85
    return-void
.end method

.method public setUseStillImage(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mUseStillImage:Z

    .line 64
    return-void
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/listeners/FreePanoramaPreviewCallback;->mPanoramaInitParam:Lcom/lge/morpho/app/quickpanorama/MorphoImageStitcher$PanoramaInitParam;

    .line 99
    return-void
.end method
