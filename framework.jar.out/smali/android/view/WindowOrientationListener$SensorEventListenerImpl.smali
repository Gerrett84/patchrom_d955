.class final Landroid/view/WindowOrientationListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final ACCELERATION_TOLERANCE:F = 4.0f

.field private static final ACCELEROMETER_DATA_X:I = 0x0

.field private static final ACCELEROMETER_DATA_Y:I = 0x1

.field private static final ACCELEROMETER_DATA_Z:I = 0x2

.field private static final ADJACENT_ORIENTATION_ANGLE_GAP:I = 0x1e

.field private static final FILTER_TIME_CONSTANT_MS:F = 200.0f

.field private static final FLAT_ANGLE:F = 60.0f

.field private static final FLAT_TIME_NANOS:J = 0x3b9aca00L

#the value of this static final field might be set in the static constructor
.field private static final MAX_ACCELERATION_MAGNITUDE:F = 0.0f

.field private static final MAX_FILTER_DELTA_TIME_NANOS:J = 0x3b9aca00L

.field private static final MAX_TILT:I = 0x3c

#the value of this static final field might be set in the static constructor
.field private static final MIN_ACCELERATION_MAGNITUDE:F = 0.0f

.field private static final NANOS_PER_MS:J = 0xf4240L

.field private static final NEAR_ZERO_MAGNITUDE:F = 1.0f

.field private static final PROPOSAL_MIN_TIME_SINCE_ACCELERATION_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_FLAT_ENDED_NANOS:J = 0x1dcd6500L

.field private static final PROPOSAL_MIN_TIME_SINCE_SWING_ENDED_NANOS:J = 0x11e1a300L

.field private static final PROPOSAL_SETTLE_TIME_NANOS:J = 0x2625a00L

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

#the value of this static final field might be set in the static constructor
.field private static final SWING_AWAY_ANGLE_DELTA:F = 0.0f

.field private static final SWING_TIME_NANOS:J = 0x11e1a300L

.field private static final TILT_HISTORY_SIZE:I = 0x28

.field private static final TILT_TOLERANCE:[[I


# instance fields
.field private mAccelerationTimestampNanos:J

.field private mFlatTimestampNanos:J

.field private mLastFilteredTimestampNanos:J

.field private mLastFilteredX:F

.field private mLastFilteredY:F

.field private mLastFilteredZ:F

.field private final mOrientationListener:Landroid/view/WindowOrientationListener;

.field private mPredictedRotation:I

.field private mPredictedRotationTimestampNanos:J

.field private mProposedRotation:I

.field private mSwingTimestampNanos:J

.field private mTiltHistory:[F

.field private mTiltHistoryIndex:I

.field private mTiltHistoryTimestampNanos:[J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, 0x411ce80a

    const/high16 v1, 0x40e0

    const/high16 v2, 0x4080

    const/4 v3, 0x2

    .line 267
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x41f0

    :goto_0
    sput v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->SWING_AWAY_ANGLE_DELTA:F

    .line 322
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    sub-float v0, v4, v0

    sput v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MIN_ACCELERATION_MAGNITUDE:F

    .line 324
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    add-float v0, v4, v1

    sput v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_ACCELERATION_MAGNITUDE:F

    .line 347
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    return-void

    .line 267
    :cond_0
    const/high16 v0, 0x41a0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 322
    goto :goto_1

    :cond_2
    move v1, v2

    .line 324
    goto :goto_2

    .line 347
    nop

    :array_0
    .array-data 0x4
        0xe7t 0xfft 0xfft 0xfft
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xe7t 0xfft 0xfft 0xfft
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xe7t 0xfft 0xfft 0xfft
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xe7t 0xfft 0xfft 0xfft
        0x3ct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/view/WindowOrientationListener;)V
    .locals 2
    .parameter "orientationListener"

    .prologue
    const/16 v1, 0x28

    .line 399
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 395
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    .line 396
    new-array v0, v1, [J

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    .line 400
    iput-object p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    .line 401
    invoke-direct {p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->reset()V

    .line 402
    return-void
.end method

.method private addTiltHistoryEntry(JF)V
    .locals 4
    .parameter "now"
    .parameter "tilt"

    .prologue
    .line 710
    iget-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    iget v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    aput p3, v0, v1

    .line 711
    iget-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    iget v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    aput-wide p1, v0, v1

    .line 712
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x28

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .line 713
    iget-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    iget v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    const-wide/high16 v2, -0x8000

    aput-wide v2, v0, v1

    .line 714
    return-void
.end method

.method private clearPredictedRotation()V
    .locals 2

    .prologue
    .line 688
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    .line 689
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    .line 690
    return-void
.end method

.method private clearTiltHistory()V
    .locals 4

    .prologue
    .line 705
    iget-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000

    aput-wide v2, v0, v1

    .line 706
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .line 707
    return-void
.end method

.method private isAccelerating(F)Z
    .locals 1
    .parameter "magnitude"

    .prologue
    .line 700
    sget v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MIN_ACCELERATION_MAGNITUDE:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    sget v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_ACCELERATION_MAGNITUDE:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFlat(J)Z
    .locals 5
    .parameter "now"

    .prologue
    .line 717
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .local v0, i:I
    :cond_0
    invoke-direct {p0, v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->nextTiltHistoryIndex(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 718
    iget-object v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    aget v1, v1, v0

    const/high16 v2, 0x4270

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 726
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 721
    :cond_2
    iget-object v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x3b9aca00

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gtz v1, :cond_0

    .line 723
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isOrientationAngleAcceptable(II)Z
    .locals 5
    .parameter "rotation"
    .parameter "orientationAngle"

    .prologue
    const/4 v3, 0x0

    .line 603
    iget-object v4, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    iget v0, v4, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    .line 604
    .local v0, currentRotation:I
    if-ltz v0, :cond_5

    .line 609
    if-eq p1, v0, :cond_0

    add-int/lit8 v4, v0, 0x1

    rem-int/lit8 v4, v4, 0x4

    if-ne p1, v4, :cond_3

    .line 611
    :cond_0
    mul-int/lit8 v4, p1, 0x5a

    add-int/lit8 v4, v4, -0x2d

    add-int/lit8 v1, v4, 0xf

    .line 613
    .local v1, lowerBound:I
    if-nez p1, :cond_2

    .line 614
    const/16 v4, 0x13b

    if-lt p2, v4, :cond_3

    add-int/lit16 v4, v1, 0x168

    if-ge p2, v4, :cond_3

    .line 643
    .end local v1           #lowerBound:I
    :cond_1
    :goto_0
    return v3

    .line 618
    .restart local v1       #lowerBound:I
    :cond_2
    if-lt p2, v1, :cond_1

    .line 628
    .end local v1           #lowerBound:I
    :cond_3
    if-eq p1, v0, :cond_4

    add-int/lit8 v4, v0, 0x3

    rem-int/lit8 v4, v4, 0x4

    if-ne p1, v4, :cond_5

    .line 630
    :cond_4
    mul-int/lit8 v4, p1, 0x5a

    add-int/lit8 v4, v4, 0x2d

    add-int/lit8 v2, v4, -0xf

    .line 632
    .local v2, upperBound:I
    if-nez p1, :cond_6

    .line 633
    const/16 v4, 0x2d

    if-gt p2, v4, :cond_5

    if-gt p2, v2, :cond_1

    .line 643
    .end local v2           #upperBound:I
    :cond_5
    const/4 v3, 0x1

    goto :goto_0

    .line 637
    .restart local v2       #upperBound:I
    :cond_6
    if-le p2, v2, :cond_5

    goto :goto_0
.end method

.method private isPredictedRotationAcceptable(J)Z
    .locals 7
    .parameter "now"

    .prologue
    const-wide/32 v5, 0x1dcd6500

    const/4 v0, 0x0

    .line 652
    iget-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    const-wide/32 v3, 0x2625a00

    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-gez v1, :cond_1

    .line 674
    :cond_0
    :goto_0
    return v0

    .line 657
    :cond_1
    iget-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    add-long/2addr v1, v5

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 663
    iget-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    const-wide/32 v3, 0x11e1a300

    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 668
    iget-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    add-long/2addr v1, v5

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 674
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSwinging(JF)Z
    .locals 5
    .parameter "now"
    .parameter "tilt"

    .prologue
    .line 730
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryIndex:I

    .local v0, i:I
    :cond_0
    invoke-direct {p0, v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->nextTiltHistoryIndex(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 731
    iget-object v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v1, v1, v0

    const-wide/32 v3, 0x11e1a300

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-gez v1, :cond_2

    .line 739
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 734
    :cond_2
    iget-object v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistory:[F

    aget v1, v1, v0

    sget v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->SWING_AWAY_ANGLE_DELTA:F

    add-float/2addr v1, v2

    cmpg-float v1, v1, p3

    if-gtz v1, :cond_0

    .line 736
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isTiltAngleAcceptable(II)Z
    .locals 3
    .parameter "rotation"
    .parameter "tiltAngle"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 589
    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v1

    if-lt p2, v2, :cond_0

    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v0

    if-gt p2, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private nextTiltHistoryIndex(I)I
    .locals 4
    .parameter "index"

    .prologue
    .line 743
    if-nez p1, :cond_0

    const/16 p1, 0x28

    .end local p1
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 744
    .restart local p1
    iget-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltHistoryTimestampNanos:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_1
    const/4 p1, -0x1

    goto :goto_0
.end method

.method private static remainingMS(JJ)F
    .locals 2
    .parameter "now"
    .parameter "until"

    .prologue
    .line 748
    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sub-long v0, p2, p0

    long-to-float v0, v0

    const v1, 0x358637bd

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    const-wide/high16 v1, -0x8000

    .line 678
    iput-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    .line 679
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 680
    iput-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    .line 681
    iput-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    .line 682
    iput-wide v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    .line 683
    invoke-direct {p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotation()V

    .line 684
    invoke-direct {p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearTiltHistory()V

    .line 685
    return-void
.end method

.method private updatePredictedRotation(JI)V
    .locals 1
    .parameter "now"
    .parameter "rotation"

    .prologue
    .line 693
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    if-eq v0, p3, :cond_0

    .line 694
    iput p3, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    .line 695
    iput-wide p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    .line 697
    :cond_0
    return-void
.end method


# virtual methods
.method public getProposedRotation()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 410
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 26
    .parameter "event"

    .prologue
    .line 416
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v17, v20, v21

    .line 417
    .local v17, x:F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v18, v20, v21

    .line 418
    .local v18, y:F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/hardware/SensorEvent;->values:[F

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aget v19, v20, v21

    .line 420
    .local v19, z:F
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$100()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 421
    const-string v20, "WindowOrientationListener"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Raw acceleration vector: x="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", y="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", z="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", magnitude="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    mul-float v22, v17, v17

    mul-float v23, v18, v18

    add-float v22, v22, v23

    mul-float v23, v19, v19

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_0
    move-object/from16 v0, p1

    iget-wide v8, v0, Landroid/hardware/SensorEvent;->timestamp:J

    .line 431
    .local v8, now:J
    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    .line 432
    .local v13, then:J
    sub-long v20, v8, v13

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x358637bd

    mul-float v16, v20, v21

    .line 434
    .local v16, timeDeltaMS:F
    cmp-long v20, v8, v13

    if-ltz v20, :cond_1

    const-wide/32 v20, 0x3b9aca00

    add-long v20, v20, v13

    cmp-long v20, v8, v20

    if-gtz v20, :cond_1

    const/16 v20, 0x0

    cmpl-float v20, v17, v20

    if-nez v20, :cond_a

    const/16 v20, 0x0

    cmpl-float v20, v18, v20

    if-nez v20, :cond_a

    const/16 v20, 0x0

    cmpl-float v20, v19, v20

    if-nez v20, :cond_a

    .line 437
    :cond_1
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$100()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 438
    const-string v20, "WindowOrientationListener"

    const-string v21, "Resetting orientation listener."

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->reset()V

    .line 441
    const/4 v12, 0x1

    .line 456
    .local v12, skipSample:Z
    :goto_0
    move-object/from16 v0, p0

    iput-wide v8, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredTimestampNanos:J

    .line 457
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    .line 458
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    .line 459
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    .line 461
    const/4 v3, 0x0

    .line 462
    .local v3, isAccelerating:Z
    const/4 v4, 0x0

    .line 463
    .local v4, isFlat:Z
    const/4 v5, 0x0

    .line 464
    .local v5, isSwinging:Z
    if-nez v12, :cond_4

    .line 466
    mul-float v20, v17, v17

    mul-float v21, v18, v18

    add-float v20, v20, v21

    mul-float v21, v19, v19

    add-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v6

    .line 467
    .local v6, magnitude:F
    const/high16 v20, 0x3f80

    cmpg-float v20, v6, v20

    if-gez v20, :cond_d

    .line 468
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$100()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 469
    const-string v20, "WindowOrientationListener"

    const-string v21, "Ignoring sensor data, magnitude too close to zero."

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotation()V

    .line 551
    .end local v6           #magnitude:F
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 552
    .local v10, oldProposedRotation:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v20, v0

    if-ltz v20, :cond_5

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isPredictedRotationAcceptable(J)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 553
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    .line 557
    :cond_6
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$100()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 558
    const-string v20, "WindowOrientationListener"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Result: currentRotation="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", proposedRotation="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", predictedRotation="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", timeDeltaMS="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", isAccelerating="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", isFlat="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", isSwinging="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", timeUntilSettledMS="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x2625a00

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    invoke-static {v8, v9, v0, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", timeUntilAccelerationDelayExpiredMS="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x1dcd6500

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    invoke-static {v8, v9, v0, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", timeUntilFlatDelayExpiredMS="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x1dcd6500

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    invoke-static {v8, v9, v0, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", timeUntilSwingDelayExpiredMS="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x11e1a300

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    invoke-static {v8, v9, v0, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->remainingMS(JJ)F

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v10, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    move/from16 v20, v0

    if-ltz v20, :cond_9

    .line 577
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$100()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 578
    const-string v20, "WindowOrientationListener"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Proposed rotation changed!  proposedRotation="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", oldProposedRotation="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposedRotation:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 583
    :cond_9
    return-void

    .line 443
    .end local v3           #isAccelerating:Z
    .end local v4           #isFlat:Z
    .end local v5           #isSwinging:Z
    .end local v10           #oldProposedRotation:I
    .end local v12           #skipSample:Z
    :cond_a
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$000()Z

    move-result v20

    if-nez v20, :cond_b

    .line 444
    const/high16 v20, 0x4348

    add-float v20, v20, v16

    div-float v2, v16, v20

    .line 445
    .local v2, alpha:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    move/from16 v20, v0

    sub-float v20, v17, v20

    mul-float v20, v20, v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    move/from16 v21, v0

    add-float v17, v20, v21

    .line 446
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    move/from16 v20, v0

    sub-float v20, v18, v20

    mul-float v20, v20, v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    move/from16 v21, v0

    add-float v18, v20, v21

    .line 447
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    move/from16 v20, v0

    sub-float v20, v19, v20

    mul-float v20, v20, v2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    move/from16 v21, v0

    add-float v19, v20, v21

    .line 449
    .end local v2           #alpha:F
    :cond_b
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$100()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 450
    const-string v20, "WindowOrientationListener"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Filtered acceleration vector: x="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", y="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", z="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", magnitude="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    mul-float v22, v17, v17

    mul-float v23, v18, v18

    add-float v22, v22, v23

    mul-float v23, v19, v19

    add-float v22, v22, v23

    invoke-static/range {v22 .. v22}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_c
    const/4 v12, 0x0

    .restart local v12       #skipSample:Z
    goto/16 :goto_0

    .line 474
    .restart local v3       #isAccelerating:Z
    .restart local v4       #isFlat:Z
    .restart local v5       #isSwinging:Z
    .restart local v6       #magnitude:F
    :cond_d
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isAccelerating(F)Z

    move-result v20

    if-eqz v20, :cond_e

    .line 475
    const/4 v3, 0x1

    .line 476
    move-object/from16 v0, p0

    iput-wide v8, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationTimestampNanos:J

    .line 485
    :cond_e
    div-float v20, v19, v6

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->asin(D)D

    move-result-wide v20

    const-wide v22, 0x404ca5dc20000000L

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v15, v0

    .line 487
    .local v15, tiltAngle:I
    int-to-float v0, v15

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v8, v9, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->addTiltHistoryEntry(JF)V

    .line 490
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isFlat(J)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 491
    const/4 v4, 0x1

    .line 492
    move-object/from16 v0, p0

    iput-wide v8, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mFlatTimestampNanos:J

    .line 494
    :cond_f
    int-to-float v0, v15

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v8, v9, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isSwinging(JF)Z

    move-result v20

    if-eqz v20, :cond_10

    .line 495
    const/4 v5, 0x1

    .line 496
    move-object/from16 v0, p0

    iput-wide v8, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mSwingTimestampNanos:J

    .line 501
    :cond_10
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v20

    const/16 v21, 0x3c

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_12

    .line 502
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$100()Z

    move-result v20

    if-eqz v20, :cond_11

    .line 503
    const-string v20, "WindowOrientationListener"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Ignoring sensor data, tilt angle too high: tiltAngle="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotation()V

    goto/16 :goto_1

    .line 511
    :cond_12
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x404ca5dc20000000L

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->round(D)J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v11, v0

    .line 513
    .local v11, orientationAngle:I
    if-gez v11, :cond_13

    .line 515
    add-int/lit16 v11, v11, 0x168

    .line 519
    :cond_13
    add-int/lit8 v20, v11, 0x2d

    div-int/lit8 v7, v20, 0x5a

    .line 520
    .local v7, nearestRotation:I
    const/16 v20, 0x4

    move/from16 v0, v20

    if-ne v7, v0, :cond_14

    .line 521
    const/4 v7, 0x0

    .line 525
    :cond_14
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v15}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isTiltAngleAcceptable(II)Z

    move-result v20

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isOrientationAngleAcceptable(II)Z

    move-result v20

    if-eqz v20, :cond_15

    .line 528
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v7}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->updatePredictedRotation(JI)V

    .line 529
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$100()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 530
    const-string v20, "WindowOrientationListener"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Predicted: tiltAngle="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", orientationAngle="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", predictedRotation="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotation:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", predictedRotationAgeMS="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mPredictedRotationTimestampNanos:J

    move-wide/from16 v22, v0

    sub-long v22, v8, v22

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    const v23, 0x358637bd

    mul-float v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 539
    :cond_15
    invoke-static {}, Landroid/view/WindowOrientationListener;->access$100()Z

    move-result v20

    if-eqz v20, :cond_16

    .line 540
    const-string v20, "WindowOrientationListener"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Ignoring sensor data, no predicted rotation: tiltAngle="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", orientationAngle="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_16
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearPredictedRotation()V

    goto/16 :goto_1
.end method
