.class public Landroid/widget/Scroller;
.super Ljava/lang/Object;
.source "Scroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Scroller$FrameRate;
    }
.end annotation


# static fields
.field private static final ABNORMAL_FRAMETIME_GAP_LOWER:F = 13.0f

.field private static final ABNORMAL_FRAMETIME_GAP_MAX:I = 0x28

.field private static final ABNORMAL_FRAMETIME_GAP_UPPER:F = 22.0f

.field private static final COEF_OF_ABNORMAL_FRAMETIME_GAP_LOWER:F = 1.3f

.field private static DECELERATION_RATE:F = 0.0f

.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final END_TENSION:F = 1.0f

.field private static final FLING_COMPUTE_MODE_USING_CONSTANT_TIME_DIFF:I = 0x1

.field private static final FLING_COMPUTE_ORIGINAL_MODE:I = 0x0

.field private static final FLING_MODE:I = 0x1

.field private static final INFLEXION:F = 0.35f

.field private static final NB_SAMPLES:I = 0x64

.field private static final P1:F = 0.175f

.field private static final P2:F = 0.35000002f

.field private static final SCROLL_MODE:I = 0x0

.field private static final SPLINE_POSITION:[F = null

.field private static final SPLINE_TIME:[F = null

.field private static final START_TENSION:F = 0.5f

.field private static sViscousFluidNormalize:F

.field private static sViscousFluidScale:F


# instance fields
.field private flingComputeMode:I

.field private frameRate:Landroid/widget/Scroller$FrameRate;

.field private isNormalFlick:Z

.field private lastTimePassed:J

.field private mCurrVelocity:F

.field private mCurrX:I

.field private mCurrY:I

.field private mDeceleration:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDistance:I

.field private mDuration:I

.field private mDurationReciprocal:F

.field private mFinalX:I

.field private mFinalY:I

.field private mFinished:Z

.field private mFlingFriction:F

.field private mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMaxX:I

.field private mMaxY:I

.field private mMinX:I

.field private mMinY:I

.field private mMode:I

.field private mPhysicalCoeff:F

.field private final mPpi:F

.field private mStartTime:J

.field private mStartX:I

.field private mStartY:I

.field private mVelocity:F

.field private timePassedDiffConstant:F


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    .line 98
    const-wide v11, 0x3fe8f5c28f5c28f6L

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    const-wide v13, 0x3feccccccccccccdL

    invoke-static {v13, v14}, Ljava/lang/Math;->log(D)D

    move-result-wide v13

    div-double/2addr v11, v13

    double-to-float v11, v11

    sput v11, Landroid/widget/Scroller;->DECELERATION_RATE:F

    .line 106
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    .line 107
    const/16 v11, 0x65

    new-array v11, v11, [F

    sput-object v11, Landroid/widget/Scroller;->SPLINE_TIME:[F

    .line 116
    const/4 v7, 0x0

    .line 117
    .local v7, x_min:F
    const/4 v10, 0x0

    .line 118
    .local v10, y_min:F
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    const/16 v11, 0x64

    if-ge v3, v11, :cond_4

    .line 119
    int-to-float v11, v3

    const/high16 v12, 0x42c8

    div-float v0, v11, v12

    .line 121
    .local v0, alpha:F
    const/high16 v6, 0x3f80

    .line 124
    .local v6, x_max:F
    :goto_1
    sub-float v11, v6, v7

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    add-float v5, v7, v11

    .line 125
    .local v5, x:F
    const/high16 v11, 0x4040

    mul-float/2addr v11, v5

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v5

    mul-float v1, v11, v12

    .line 126
    .local v1, coef:F
    const/high16 v11, 0x3f80

    sub-float/2addr v11, v5

    const v12, 0x3e333333

    mul-float/2addr v11, v12

    const v12, 0x3eb33334

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    mul-float/2addr v11, v1

    mul-float v12, v5, v5

    mul-float/2addr v12, v5

    add-float v4, v11, v12

    .line 127
    .local v4, tx:F
    sub-float v11, v4, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3ee4f8b588e368f1L

    cmpg-double v11, v11, v13

    if-gez v11, :cond_0

    .line 131
    sget-object v11, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v5

    const/high16 v13, 0x3f00

    mul-float/2addr v12, v13

    add-float/2addr v12, v5

    mul-float/2addr v12, v1

    mul-float v13, v5, v5

    mul-float/2addr v13, v5

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 133
    const/high16 v9, 0x3f80

    .line 136
    .local v9, y_max:F
    :goto_2
    sub-float v11, v9, v10

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    add-float v8, v10, v11

    .line 137
    .local v8, y:F
    const/high16 v11, 0x4040

    mul-float/2addr v11, v8

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v8

    mul-float v1, v11, v12

    .line 138
    const/high16 v11, 0x3f80

    sub-float/2addr v11, v8

    const/high16 v12, 0x3f00

    mul-float/2addr v11, v12

    add-float/2addr v11, v8

    mul-float/2addr v11, v1

    mul-float v12, v8, v8

    mul-float/2addr v12, v8

    add-float v2, v11, v12

    .line 139
    .local v2, dy:F
    sub-float v11, v2, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-double v11, v11

    const-wide v13, 0x3ee4f8b588e368f1L

    cmpg-double v11, v11, v13

    if-gez v11, :cond_2

    .line 143
    sget-object v11, Landroid/widget/Scroller;->SPLINE_TIME:[F

    const/high16 v12, 0x3f80

    sub-float/2addr v12, v8

    const v13, 0x3e333333

    mul-float/2addr v12, v13

    const v13, 0x3eb33334

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    mul-float/2addr v12, v1

    mul-float v13, v8, v8

    mul-float/2addr v13, v8

    add-float/2addr v12, v13

    aput v12, v11, v3

    .line 118
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 128
    .end local v2           #dy:F
    .end local v8           #y:F
    .end local v9           #y_max:F
    :cond_0
    cmpl-float v11, v4, v0

    if-lez v11, :cond_1

    move v6, v5

    goto/16 :goto_1

    .line 129
    :cond_1
    move v7, v5

    goto/16 :goto_1

    .line 140
    .restart local v2       #dy:F
    .restart local v8       #y:F
    .restart local v9       #y_max:F
    :cond_2
    cmpl-float v11, v2, v0

    if-lez v11, :cond_3

    move v9, v8

    goto :goto_2

    .line 141
    :cond_3
    move v10, v8

    goto :goto_2

    .line 145
    .end local v0           #alpha:F
    .end local v1           #coef:F
    .end local v2           #dy:F
    .end local v4           #tx:F
    .end local v5           #x:F
    .end local v6           #x_max:F
    .end local v8           #y:F
    .end local v9           #y_max:F
    :cond_4
    sget-object v11, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    const/16 v12, 0x64

    sget-object v13, Landroid/widget/Scroller;->SPLINE_TIME:[F

    const/16 v14, 0x64

    const/high16 v15, 0x3f80

    aput v15, v13, v14

    aput v15, v11, v12

    .line 148
    const/high16 v11, 0x4100

    sput v11, Landroid/widget/Scroller;->sViscousFluidScale:F

    .line 150
    const/high16 v11, 0x3f80

    sput v11, Landroid/widget/Scroller;->sViscousFluidNormalize:F

    .line 151
    const/high16 v11, 0x3f80

    const/high16 v12, 0x3f80

    invoke-static {v12}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v12

    div-float/2addr v11, v12

    sput v11, Landroid/widget/Scroller;->sViscousFluidNormalize:F

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 2
    .parameter "context"
    .parameter "interpolator"

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 173
    return-void

    .line 171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 2
    .parameter "context"
    .parameter "interpolator"
    .parameter "flywheel"

    .prologue
    .line 180
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mFlingFriction:F

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 182
    iput-object p2, p0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x4320

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/Scroller;->mPpi:F

    .line 184
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mDeceleration:F

    .line 185
    iput-boolean p3, p0, Landroid/widget/Scroller;->mFlywheel:Z

    .line 187
    const v0, 0x3f570a3d

    invoke-direct {p0, v0}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    .line 189
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCH_SCROLLER:Z

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Landroid/widget/Scroller$FrameRate;

    invoke-direct {v0, p0}, Landroid/widget/Scroller$FrameRate;-><init>(Landroid/widget/Scroller;)V

    iput-object v0, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->isNormalFlick:Z

    .line 193
    :cond_0
    return-void
.end method

.method private computeDeceleration(F)F
    .locals 2
    .parameter "friction"

    .prologue
    .line 208
    const v0, 0x43c10b3d

    iget v1, p0, Landroid/widget/Scroller;->mPpi:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method private getSplineDeceleration(F)D
    .locals 3
    .parameter "velocity"

    .prologue
    .line 610
    const v0, 0x3eb33333

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/Scroller;->mFlingFriction:F

    iget v2, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private getSplineFlingDistance(F)D
    .locals 8
    .parameter "velocity"

    .prologue
    .line 620
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->getSplineDeceleration(F)D

    move-result-wide v2

    .line 621
    .local v2, l:D
    sget v4, Landroid/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    sub-double v0, v4, v6

    .line 622
    .local v0, decelMinusOne:D
    iget v4, p0, Landroid/widget/Scroller;->mFlingFriction:F

    iget v5, p0, Landroid/widget/Scroller;->mPhysicalCoeff:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    sget v6, Landroid/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v6, v6

    div-double/2addr v6, v0

    mul-double/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    return-wide v4
.end method

.method private getSplineFlingDuration(F)I
    .locals 8
    .parameter "velocity"

    .prologue
    .line 614
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->getSplineDeceleration(F)D

    move-result-wide v2

    .line 615
    .local v2, l:D
    sget v4, Landroid/widget/Scroller;->DECELERATION_RATE:F

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    sub-double v0, v4, v6

    .line 616
    .local v0, decelMinusOne:D
    const-wide v4, 0x408f400000000000L

    div-double v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->exp(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    double-to-int v4, v4

    return v4
.end method

.method static viscousFluid(F)F
    .locals 4
    .parameter "x"

    .prologue
    const/high16 v3, 0x3f80

    .line 627
    sget v1, Landroid/widget/Scroller;->sViscousFluidScale:F

    mul-float/2addr p0, v1

    .line 628
    cmpg-float v1, p0, v3

    if-gez v1, :cond_0

    .line 629
    neg-float v1, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v1, v3, v1

    sub-float/2addr p0, v1

    .line 635
    :goto_0
    sget v1, Landroid/widget/Scroller;->sViscousFluidNormalize:F

    mul-float/2addr p0, v1

    .line 636
    return p0

    .line 631
    :cond_0
    const v0, 0x3ebc5ab2

    .line 632
    .local v0, start:F
    sub-float v1, v3, p0

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float p0, v3, v1

    .line 633
    sub-float v1, v3, v0

    mul-float/2addr v1, p0

    add-float p0, v0, v1

    goto :goto_0
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 647
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrX:I

    .line 648
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iput v0, p0, Landroid/widget/Scroller;->mCurrY:I

    .line 649
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 650
    return-void
.end method

.method public computeScrollOffset()Z
    .locals 17

    .prologue
    .line 369
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/Scroller;->mFinished:Z

    if-eqz v13, :cond_0

    .line 370
    const/4 v13, 0x0

    .line 448
    :goto_0
    return v13

    .line 373
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-wide v15, v0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v13, v15

    long-to-int v10, v13

    .line 375
    .local v10, timePassed:I
    sget-boolean v13, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCH_SCROLLER:Z

    if-eqz v13, :cond_2

    .line 376
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    .line 378
    .local v1, currentTime:J
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/widget/Scroller;->isNormalFlick:Z

    if-eqz v13, :cond_2

    .line 379
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iget v14, v13, Landroid/widget/Scroller$FrameRate;->frameCount:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Landroid/widget/Scroller$FrameRate;->frameCount:I

    .line 380
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/widget/Scroller;->mStartTime:J

    sub-long v14, v1, v14

    iput-wide v14, v13, Landroid/widget/Scroller$FrameRate;->timePassed:J

    .line 382
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Scroller;->flingComputeMode:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_1

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/widget/Scroller;->lastTimePassed:J

    sub-long v13, v1, v13

    const-wide/16 v15, 0x28

    cmp-long v13, v13, v15

    if-ltz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iget v13, v13, Landroid/widget/Scroller$FrameRate;->frameCount:I

    const/4 v14, 0x1

    if-le v13, v14, :cond_1

    .line 384
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iget v14, v13, Landroid/widget/Scroller$FrameRate;->extraTime:I

    move-object/from16 v0, p0

    iget-wide v15, v0, Landroid/widget/Scroller;->lastTimePassed:J

    sub-long v15, v1, v15

    long-to-float v15, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->timePassedDiffConstant:F

    move/from16 v16, v0

    sub-float v15, v15, v16

    float-to-int v15, v15

    add-int/2addr v14, v15

    iput v14, v13, Landroid/widget/Scroller$FrameRate;->extraTime:I

    .line 386
    :cond_1
    move-object/from16 v0, p0

    iput-wide v1, v0, Landroid/widget/Scroller;->lastTimePassed:J

    .line 388
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Scroller;->flingComputeMode:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 389
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Scroller;->timePassedDiffConstant:F

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iget v14, v14, Landroid/widget/Scroller$FrameRate;->frameCount:I

    int-to-float v14, v14

    mul-float/2addr v13, v14

    float-to-int v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iget v14, v14, Landroid/widget/Scroller$FrameRate;->extraTime:I

    add-int v10, v13, v14

    .line 394
    .end local v1           #currentTime:J
    :cond_2
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Scroller;->mDuration:I

    if-ge v10, v13, :cond_6

    .line 395
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Scroller;->mMode:I

    packed-switch v13, :pswitch_data_0

    .line 448
    :cond_3
    :goto_1
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 397
    :pswitch_0
    int-to-float v13, v10

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Scroller;->mDurationReciprocal:F

    mul-float v12, v13, v14

    .line 399
    .local v12, x:F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v13, :cond_4

    .line 400
    invoke-static {v12}, Landroid/widget/Scroller;->viscousFluid(F)F

    move-result v12

    .line 404
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Scroller;->mStartX:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Scroller;->mDeltaX:F

    mul-float/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Scroller;->mCurrX:I

    .line 405
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Scroller;->mStartY:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Scroller;->mDeltaY:F

    mul-float/2addr v14, v12

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Scroller;->mCurrY:I

    goto :goto_1

    .line 402
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/Scroller;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v13, v12}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v12

    goto :goto_2

    .line 408
    .end local v12           #x:F
    :pswitch_1
    int-to-float v13, v10

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v14, v14

    div-float v7, v13, v14

    .line 409
    .local v7, t:F
    const/high16 v13, 0x42c8

    mul-float/2addr v13, v7

    float-to-int v6, v13

    .line 410
    .local v6, index:I
    const/high16 v5, 0x3f80

    .line 411
    .local v5, distanceCoef:F
    const/4 v11, 0x0

    .line 412
    .local v11, velocityCoef:F
    const/16 v13, 0x64

    if-ge v6, v13, :cond_5

    .line 413
    int-to-float v13, v6

    const/high16 v14, 0x42c8

    div-float v8, v13, v14

    .line 414
    .local v8, t_inf:F
    add-int/lit8 v13, v6, 0x1

    int-to-float v13, v13

    const/high16 v14, 0x42c8

    div-float v9, v13, v14

    .line 415
    .local v9, t_sup:F
    sget-object v13, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    aget v3, v13, v6

    .line 416
    .local v3, d_inf:F
    sget-object v13, Landroid/widget/Scroller;->SPLINE_POSITION:[F

    add-int/lit8 v14, v6, 0x1

    aget v4, v13, v14

    .line 417
    .local v4, d_sup:F
    sub-float v13, v4, v3

    sub-float v14, v9, v8

    div-float v11, v13, v14

    .line 418
    sub-float v13, v7, v8

    mul-float/2addr v13, v11

    add-float v5, v3, v13

    .line 421
    .end local v3           #d_inf:F
    .end local v4           #d_sup:F
    .end local v8           #t_inf:F
    .end local v9           #t_sup:F
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Scroller;->mDistance:I

    int-to-float v13, v13

    mul-float/2addr v13, v11

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v14, v14

    div-float/2addr v13, v14

    const/high16 v14, 0x447a

    mul-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Scroller;->mCurrVelocity:F

    .line 423
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Scroller;->mStartX:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Scroller;->mFinalX:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    mul-float/2addr v14, v5

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Scroller;->mCurrX:I

    .line 425
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Scroller;->mCurrX:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Scroller;->mMaxX:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Scroller;->mCurrX:I

    .line 426
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Scroller;->mCurrX:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Scroller;->mMinX:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Scroller;->mCurrX:I

    .line 428
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Scroller;->mStartY:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Scroller;->mFinalY:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    mul-float/2addr v14, v5

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Scroller;->mCurrY:I

    .line 430
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Scroller;->mCurrY:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Scroller;->mMaxY:I

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Scroller;->mCurrY:I

    .line 431
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Scroller;->mCurrY:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Scroller;->mMinY:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Scroller;->mCurrY:I

    .line 433
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Scroller;->mCurrX:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Scroller;->mFinalX:I

    if-ne v13, v14, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Scroller;->mCurrY:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/Scroller;->mFinalY:I

    if-ne v13, v14, :cond_3

    .line 434
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Scroller;->mFinished:Z

    goto/16 :goto_1

    .line 441
    .end local v5           #distanceCoef:F
    .end local v6           #index:I
    .end local v7           #t:F
    .end local v11           #velocityCoef:F
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Scroller;->mFinalX:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Scroller;->mCurrX:I

    .line 442
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Scroller;->mFinalY:I

    move-object/from16 v0, p0

    iput v13, v0, Landroid/widget/Scroller;->mCurrY:I

    .line 443
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Scroller;->mFinished:Z

    .line 444
    sget-boolean v13, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCH_SCROLLER:Z

    if-eqz v13, :cond_3

    .line 445
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/widget/Scroller;->isNormalFlick:Z

    goto/16 :goto_1

    .line 395
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 3
    .parameter "extend"

    .prologue
    .line 661
    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v0

    .line 662
    .local v0, passed:I
    add-int v1, v0, p1

    iput v1, p0, Landroid/widget/Scroller;->mDuration:I

    .line 663
    const/high16 v1, 0x3f80

    iget v2, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 664
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 665
    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 17
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 557
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/Scroller;->mFlywheel:Z

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/widget/Scroller;->mFinished:Z

    if-nez v15, :cond_0

    .line 558
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Scroller;->getCurrVelocity()F

    move-result v9

    .line 560
    .local v9, oldVel:F
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Scroller;->mFinalX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mStartX:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-float v4, v15

    .line 561
    .local v4, dx:F
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Scroller;->mFinalY:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mStartY:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-float v5, v15

    .line 562
    .local v5, dy:F
    mul-float v15, v4, v4

    mul-float v16, v5, v5

    add-float v15, v15, v16

    invoke-static {v15}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v6

    .line 564
    .local v6, hyp:F
    div-float v7, v4, v6

    .line 565
    .local v7, ndx:F
    div-float v8, v5, v6

    .line 567
    .local v8, ndy:F
    mul-float v10, v7, v9

    .line 568
    .local v10, oldVelocityX:F
    mul-float v11, v8, v9

    .line 569
    .local v11, oldVelocityY:F
    move/from16 v0, p3

    int-to-float v15, v0

    invoke-static {v15}, Ljava/lang/Math;->signum(F)F

    move-result v15

    invoke-static {v10}, Ljava/lang/Math;->signum(F)F

    move-result v16

    cmpl-float v15, v15, v16

    if-nez v15, :cond_0

    move/from16 v0, p4

    int-to-float v15, v0

    invoke-static {v15}, Ljava/lang/Math;->signum(F)F

    move-result v15

    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    move-result v16

    cmpl-float v15, v15, v16

    if-nez v15, :cond_0

    .line 571
    move/from16 v0, p3

    int-to-float v15, v0

    add-float/2addr v15, v10

    float-to-int v0, v15

    move/from16 p3, v0

    .line 572
    move/from16 v0, p4

    int-to-float v15, v0

    add-float/2addr v15, v11

    float-to-int v0, v15

    move/from16 p4, v0

    .line 576
    .end local v4           #dx:F
    .end local v5           #dy:F
    .end local v6           #hyp:F
    .end local v7           #ndx:F
    .end local v8           #ndy:F
    .end local v9           #oldVel:F
    .end local v10           #oldVelocityX:F
    .end local v11           #oldVelocityY:F
    :cond_0
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Scroller;->mMode:I

    .line 577
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/widget/Scroller;->mFinished:Z

    .line 579
    mul-int v15, p3, p3

    mul-int v16, p4, p4

    add-int v15, v15, v16

    int-to-float v15, v15

    invoke-static {v15}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v14

    .line 581
    .local v14, velocity:F
    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/Scroller;->mVelocity:F

    .line 582
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/Scroller;->getSplineFlingDuration(F)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Scroller;->mDuration:I

    .line 583
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Landroid/widget/Scroller;->mStartTime:J

    .line 584
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mStartX:I

    .line 585
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mStartY:I

    .line 587
    const/4 v15, 0x0

    cmpl-float v15, v14, v15

    if-nez v15, :cond_1

    const/high16 v2, 0x3f80

    .line 588
    .local v2, coeffX:F
    :goto_0
    const/4 v15, 0x0

    cmpl-float v15, v14, v15

    if-nez v15, :cond_2

    const/high16 v3, 0x3f80

    .line 590
    .local v3, coeffY:F
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/widget/Scroller;->getSplineFlingDistance(F)D

    move-result-wide v12

    .line 591
    .local v12, totalDistance:D
    invoke-static {v14}, Ljava/lang/Math;->signum(F)F

    move-result v15

    float-to-double v15, v15

    mul-double/2addr v15, v12

    double-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Scroller;->mDistance:I

    .line 593
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMinX:I

    .line 594
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMaxX:I

    .line 595
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMinY:I

    .line 596
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Scroller;->mMaxY:I

    .line 598
    float-to-double v15, v2

    mul-double/2addr v15, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v15

    long-to-int v15, v15

    add-int v15, v15, p1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Scroller;->mFinalX:I

    .line 600
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Scroller;->mFinalX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mMaxX:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Scroller;->mFinalX:I

    .line 601
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Scroller;->mFinalX:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mMinX:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Scroller;->mFinalX:I

    .line 603
    float-to-double v15, v3

    mul-double/2addr v15, v12

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->round(D)J

    move-result-wide v15

    long-to-int v15, v15

    add-int v15, v15, p2

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Scroller;->mFinalY:I

    .line 605
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Scroller;->mFinalY:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mMaxY:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Scroller;->mFinalY:I

    .line 606
    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/Scroller;->mFinalY:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Scroller;->mMinY:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/Scroller;->mFinalY:I

    .line 607
    return-void

    .line 587
    .end local v2           #coeffX:F
    .end local v3           #coeffY:F
    .end local v12           #totalDistance:D
    :cond_1
    move/from16 v0, p3

    int-to-float v15, v0

    div-float v2, v15, v14

    goto/16 :goto_0

    .line 588
    .restart local v2       #coeffX:F
    :cond_2
    move/from16 v0, p4

    int-to-float v15, v0

    div-float v3, v15, v14

    goto/16 :goto_1
.end method

.method public final forceFinished(Z)V
    .locals 0
    .parameter "finished"

    .prologue
    .line 230
    iput-boolean p1, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 231
    return-void
.end method

.method public getCurrVelocity()F
    .locals 3

    .prologue
    .line 267
    iget v0, p0, Landroid/widget/Scroller;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/widget/Scroller;->mCurrVelocity:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/Scroller;->mVelocity:F

    iget v1, p0, Landroid/widget/Scroller;->mDeceleration:F

    invoke-virtual {p0}, Landroid/widget/Scroller;->timePassed()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    const/high16 v2, 0x44fa

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public final getCurrX()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Landroid/widget/Scroller;->mCurrX:I

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Landroid/widget/Scroller;->mCurrY:I

    return v0
.end method

.method public final getDuration()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Landroid/widget/Scroller;->mStartX:I

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Landroid/widget/Scroller;->mStartY:I

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .prologue
    .line 221
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 3
    .parameter "xvel"
    .parameter "yvel"

    .prologue
    .line 706
    iget-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v2, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget v1, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v2, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFinalX(I)V
    .locals 2
    .parameter "newX"

    .prologue
    .line 684
    iput p1, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 685
    iget v0, p0, Landroid/widget/Scroller;->mFinalX:I

    iget v1, p0, Landroid/widget/Scroller;->mStartX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 686
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 687
    return-void
.end method

.method public setFinalY(I)V
    .locals 2
    .parameter "newY"

    .prologue
    .line 697
    iput p1, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 698
    iget v0, p0, Landroid/widget/Scroller;->mFinalY:I

    iget v1, p0, Landroid/widget/Scroller;->mStartY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 699
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 700
    return-void
.end method

.method public final setFriction(F)V
    .locals 1
    .parameter "friction"

    .prologue
    .line 203
    invoke-direct {p0, p1}, Landroid/widget/Scroller;->computeDeceleration(F)F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->mDeceleration:F

    .line 204
    iput p1, p0, Landroid/widget/Scroller;->mFlingFriction:F

    .line 205
    return-void
.end method

.method public startScroll(IIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 466
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 467
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 9
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    const/high16 v8, 0x41b0

    const/high16 v7, 0x4150

    const v6, 0x3fa66666

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 484
    iput v4, p0, Landroid/widget/Scroller;->mMode:I

    .line 485
    iput-boolean v4, p0, Landroid/widget/Scroller;->mFinished:Z

    .line 486
    iput p5, p0, Landroid/widget/Scroller;->mDuration:I

    .line 487
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/Scroller;->mStartTime:J

    .line 488
    iput p1, p0, Landroid/widget/Scroller;->mStartX:I

    .line 489
    iput p2, p0, Landroid/widget/Scroller;->mStartY:I

    .line 490
    add-int v0, p1, p3

    iput v0, p0, Landroid/widget/Scroller;->mFinalX:I

    .line 491
    add-int v0, p2, p4

    iput v0, p0, Landroid/widget/Scroller;->mFinalY:I

    .line 492
    int-to-float v0, p3

    iput v0, p0, Landroid/widget/Scroller;->mDeltaX:F

    .line 493
    int-to-float v0, p4

    iput v0, p0, Landroid/widget/Scroller;->mDeltaY:F

    .line 495
    sget-boolean v0, Lcom/lge/config/ConfigBuildFlags;->CAPP_TOUCH_SCROLLER:Z

    if-eqz v0, :cond_2

    .line 496
    iput-boolean v5, p0, Landroid/widget/Scroller;->isNormalFlick:Z

    .line 498
    iget-object v0, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iget v0, v0, Landroid/widget/Scroller$FrameRate;->frameCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iget-wide v0, v0, Landroid/widget/Scroller$FrameRate;->timePassed:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 499
    :cond_0
    iget-object v0, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iput v4, v0, Landroid/widget/Scroller$FrameRate;->frameCount:I

    .line 500
    iget-object v0, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/widget/Scroller$FrameRate;->timePassed:J

    .line 501
    iget-object v0, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    iget v0, v0, Landroid/widget/Scroller$FrameRate;->frameTotalCount:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_4

    .line 502
    iput v5, p0, Landroid/widget/Scroller;->flingComputeMode:I

    .line 503
    iget-object v0, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    invoke-virtual {v0}, Landroid/widget/Scroller$FrameRate;->getTimeDiff()F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->timePassedDiffConstant:F

    .line 504
    iget v0, p0, Landroid/widget/Scroller;->timePassedDiffConstant:F

    cmpg-float v0, v0, v8

    if-gez v0, :cond_3

    .line 505
    iput v5, p0, Landroid/widget/Scroller;->flingComputeMode:I

    .line 506
    iget v0, p0, Landroid/widget/Scroller;->timePassedDiffConstant:F

    cmpg-float v0, v0, v7

    if-gez v0, :cond_1

    .line 507
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDuration:I

    .line 529
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    invoke-virtual {v0}, Landroid/widget/Scroller$FrameRate;->reset()V

    .line 532
    :cond_2
    const/high16 v0, 0x3f80

    iget v1, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/widget/Scroller;->mDurationReciprocal:F

    .line 533
    return-void

    .line 510
    :cond_3
    iput v4, p0, Landroid/widget/Scroller;->flingComputeMode:I

    .line 511
    iget-object v0, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    invoke-virtual {v0}, Landroid/widget/Scroller$FrameRate;->allReset()V

    goto :goto_0

    .line 514
    :cond_4
    iput v4, p0, Landroid/widget/Scroller;->flingComputeMode:I

    goto :goto_0

    .line 517
    :cond_5
    iget-object v0, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    invoke-virtual {v0}, Landroid/widget/Scroller$FrameRate;->getTimeDiff()F

    move-result v0

    iput v0, p0, Landroid/widget/Scroller;->timePassedDiffConstant:F

    .line 518
    iget v0, p0, Landroid/widget/Scroller;->timePassedDiffConstant:F

    cmpg-float v0, v0, v8

    if-gez v0, :cond_6

    .line 519
    iput v5, p0, Landroid/widget/Scroller;->flingComputeMode:I

    .line 520
    iget v0, p0, Landroid/widget/Scroller;->timePassedDiffConstant:F

    cmpg-float v0, v0, v7

    if-gez v0, :cond_1

    .line 521
    iget v0, p0, Landroid/widget/Scroller;->mDuration:I

    int-to-float v0, v0

    mul-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, p0, Landroid/widget/Scroller;->mDuration:I

    goto :goto_0

    .line 524
    :cond_6
    iput v4, p0, Landroid/widget/Scroller;->flingComputeMode:I

    .line 525
    iget-object v0, p0, Landroid/widget/Scroller;->frameRate:Landroid/widget/Scroller$FrameRate;

    invoke-virtual {v0}, Landroid/widget/Scroller$FrameRate;->allReset()V

    goto :goto_0
.end method

.method public timePassed()I
    .locals 4

    .prologue
    .line 673
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/widget/Scroller;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
