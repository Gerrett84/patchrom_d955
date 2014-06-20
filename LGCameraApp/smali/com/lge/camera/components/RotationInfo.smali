.class public Lcom/lge/camera/components/RotationInfo;
.super Ljava/lang/Object;
.source "RotationInfo.java"


# static fields
.field protected static final ANIMATION_SPEED:I = 0xf0


# instance fields
.field protected mAnimationEndTime:J

.field protected mAnimationStartTime:J

.field protected mClockwise:Z

.field protected mCurrentDegree:I

.field protected mStartDegree:I

.field protected mTargetDegree:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput v0, p0, Lcom/lge/camera/components/RotationInfo;->mCurrentDegree:I

    .line 9
    iput v0, p0, Lcom/lge/camera/components/RotationInfo;->mStartDegree:I

    .line 10
    iput v0, p0, Lcom/lge/camera/components/RotationInfo;->mTargetDegree:I

    .line 11
    iput-wide v1, p0, Lcom/lge/camera/components/RotationInfo;->mAnimationStartTime:J

    .line 12
    iput-wide v1, p0, Lcom/lge/camera/components/RotationInfo;->mAnimationEndTime:J

    .line 13
    iput-boolean v0, p0, Lcom/lge/camera/components/RotationInfo;->mClockwise:Z

    return-void
.end method


# virtual methods
.method public calcCurrentDegree()Z
    .locals 6

    .prologue
    .line 95
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .line 96
    .local v2, time:J
    iget-wide v4, p0, Lcom/lge/camera/components/RotationInfo;->mAnimationEndTime:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 97
    iget-wide v4, p0, Lcom/lge/camera/components/RotationInfo;->mAnimationStartTime:J

    sub-long v4, v2, v4

    long-to-int v1, v4

    .line 98
    .local v1, deltaTime:I
    iget v4, p0, Lcom/lge/camera/components/RotationInfo;->mStartDegree:I

    iget-boolean v5, p0, Lcom/lge/camera/components/RotationInfo;->mClockwise:Z

    if-eqz v5, :cond_0

    .end local v1           #deltaTime:I
    :goto_0
    mul-int/lit16 v5, v1, 0xf0

    div-int/lit16 v5, v5, 0x3e8

    add-int v0, v4, v5

    .line 99
    .local v0, degree:I
    if-ltz v0, :cond_1

    rem-int/lit16 v0, v0, 0x168

    .line 100
    :goto_1
    iput v0, p0, Lcom/lge/camera/components/RotationInfo;->mCurrentDegree:I

    .line 101
    const/4 v4, 0x1

    .line 105
    .end local v0           #degree:I
    :goto_2
    return v4

    .line 98
    .restart local v1       #deltaTime:I
    :cond_0
    neg-int v1, v1

    goto :goto_0

    .line 99
    .end local v1           #deltaTime:I
    .restart local v0       #degree:I
    :cond_1
    rem-int/lit16 v4, v0, 0x168

    add-int/lit16 v0, v4, 0x168

    goto :goto_1

    .line 103
    .end local v0           #degree:I
    :cond_2
    iget v4, p0, Lcom/lge/camera/components/RotationInfo;->mTargetDegree:I

    iput v4, p0, Lcom/lge/camera/components/RotationInfo;->mCurrentDegree:I

    .line 105
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public getAnimationEndTime()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/lge/camera/components/RotationInfo;->mAnimationEndTime:J

    return-wide v0
.end method

.method public getAnimationStartTime()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/lge/camera/components/RotationInfo;->mAnimationStartTime:J

    return-wide v0
.end method

.method public getCurrentDegree()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/lge/camera/components/RotationInfo;->mCurrentDegree:I

    return v0
.end method

.method public getStartDegree()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/lge/camera/components/RotationInfo;->mStartDegree:I

    return v0
.end method

.method public getTargetDegree()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/lge/camera/components/RotationInfo;->mTargetDegree:I

    return v0
.end method

.method public isClockwise()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/lge/camera/components/RotationInfo;->mClockwise:Z

    return v0
.end method

.method public setAnimationEndTime(J)V
    .locals 0
    .parameter "mAnimationEndTime"

    .prologue
    .line 52
    iput-wide p1, p0, Lcom/lge/camera/components/RotationInfo;->mAnimationEndTime:J

    .line 53
    return-void
.end method

.method public setAnimationStartTime(J)V
    .locals 0
    .parameter "mAnimationStartTime"

    .prologue
    .line 44
    iput-wide p1, p0, Lcom/lge/camera/components/RotationInfo;->mAnimationStartTime:J

    .line 45
    return-void
.end method

.method public setClockwise(Z)V
    .locals 0
    .parameter "mClockwise"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/lge/camera/components/RotationInfo;->mClockwise:Z

    .line 61
    return-void
.end method

.method public setCurrentDegree(I)V
    .locals 0
    .parameter "mCurrentDegree"

    .prologue
    .line 20
    iput p1, p0, Lcom/lge/camera/components/RotationInfo;->mCurrentDegree:I

    .line 21
    return-void
.end method

.method public setDegree(I)V
    .locals 1
    .parameter "degree"

    .prologue
    .line 64
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/lge/camera/components/RotationInfo;->setDegree(IZ)V

    .line 65
    return-void
.end method

.method public setDegree(IZ)V
    .locals 5
    .parameter "degree"
    .parameter "animation"

    .prologue
    .line 69
    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    .line 70
    :goto_0
    iget v1, p0, Lcom/lge/camera/components/RotationInfo;->mTargetDegree:I

    if-ne p1, v1, :cond_1

    .line 92
    :goto_1
    return-void

    .line 69
    :cond_0
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 p1, v1, 0x168

    goto :goto_0

    .line 74
    :cond_1
    if-eqz p2, :cond_3

    .line 75
    iput p1, p0, Lcom/lge/camera/components/RotationInfo;->mTargetDegree:I

    .line 76
    iget v1, p0, Lcom/lge/camera/components/RotationInfo;->mCurrentDegree:I

    iput v1, p0, Lcom/lge/camera/components/RotationInfo;->mStartDegree:I

    .line 80
    :goto_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lge/camera/components/RotationInfo;->mAnimationStartTime:J

    .line 82
    iget v1, p0, Lcom/lge/camera/components/RotationInfo;->mTargetDegree:I

    iget v2, p0, Lcom/lge/camera/components/RotationInfo;->mCurrentDegree:I

    sub-int v0, v1, v2

    .line 83
    .local v0, diff:I
    if-ltz v0, :cond_4

    .line 87
    :goto_3
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2

    add-int/lit16 v0, v0, -0x168

    .line 89
    :cond_2
    if-ltz v0, :cond_5

    const/4 v1, 0x1

    :goto_4
    iput-boolean v1, p0, Lcom/lge/camera/components/RotationInfo;->mClockwise:Z

    .line 91
    iget-wide v1, p0, Lcom/lge/camera/components/RotationInfo;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0xf0

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/lge/camera/components/RotationInfo;->mAnimationEndTime:J

    goto :goto_1

    .line 78
    .end local v0           #diff:I
    :cond_3
    iput p1, p0, Lcom/lge/camera/components/RotationInfo;->mCurrentDegree:I

    iput p1, p0, Lcom/lge/camera/components/RotationInfo;->mStartDegree:I

    iput p1, p0, Lcom/lge/camera/components/RotationInfo;->mTargetDegree:I

    goto :goto_2

    .line 83
    .restart local v0       #diff:I
    :cond_4
    add-int/lit16 v0, v0, 0x168

    goto :goto_3

    .line 89
    :cond_5
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public setStartDegree(I)V
    .locals 0
    .parameter "mStartDegree"

    .prologue
    .line 28
    iput p1, p0, Lcom/lge/camera/components/RotationInfo;->mStartDegree:I

    .line 29
    return-void
.end method

.method public setTargetDegree(I)V
    .locals 0
    .parameter "mTargetDegree"

    .prologue
    .line 36
    iput p1, p0, Lcom/lge/camera/components/RotationInfo;->mTargetDegree:I

    .line 37
    return-void
.end method
