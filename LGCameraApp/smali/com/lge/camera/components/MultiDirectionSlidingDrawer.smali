.class public Lcom/lge/camera/components/MultiDirectionSlidingDrawer;
.super Landroid/view/ViewGroup;
.source "MultiDirectionSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/camera/components/MultiDirectionSlidingDrawer$1;,
        Lcom/lge/camera/components/MultiDirectionSlidingDrawer$SlidingHandler;,
        Lcom/lge/camera/components/MultiDirectionSlidingDrawer$DrawerToggler;,
        Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;,
        Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerCloseListener;,
        Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerOpenListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field private static final MSG_ANIMATE:I = 0x3e8

.field public static final ORIENTATION_BTT:I = 0x1

.field public static final ORIENTATION_LTR:I = 0x2

.field public static final ORIENTATION_RTL:I = 0x0

.field public static final ORIENTATION_TTB:I = 0x3

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mContent:Landroid/view/View;

.field private final mContentId:I

.field private mCurrentAnimationTime:J

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mInvert:Z

.field private mLocked:Z

.field private mMaximumAcceleration:I

.field private mMaximumMajorVelocity:I

.field private mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

.field private final mTapThreshold:I

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/high16 v9, 0x3f00

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 162
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 63
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 81
    new-instance v5, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$SlidingHandler;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$SlidingHandler;-><init>(Lcom/lge/camera/components/MultiDirectionSlidingDrawer;Lcom/lge/camera/components/MultiDirectionSlidingDrawer$1;)V

    iput-object v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    .line 163
    sget-object v5, Lcom/lge/camera/R$styleable;->MultiDirectionSlidingDrawer:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 165
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 166
    .local v4, orientation:I
    if-eq v4, v7, :cond_0

    if-ne v4, v10, :cond_2

    :cond_0
    move v5, v7

    :goto_0
    iput-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    .line 167
    invoke-virtual {v0, v10, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    .line 168
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    .line 169
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAllowSingleTap:Z

    .line 170
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimateOnClick:Z

    .line 171
    if-eq v4, v10, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    :cond_1
    move v5, v7

    :goto_1
    iput-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    .line 173
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 174
    .local v3, handleId:I
    if-nez v3, :cond_4

    .line 175
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3           #handleId:I
    :cond_2
    move v5, v6

    .line 166
    goto :goto_0

    :cond_3
    move v5, v6

    .line 171
    goto :goto_1

    .line 179
    .restart local v3       #handleId:I
    :cond_4
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 180
    .local v1, contentId:I
    if-nez v1, :cond_5

    .line 181
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 185
    :cond_5
    if-ne v3, v1, :cond_6

    .line 186
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content and handle attributes must refer to different children."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 189
    :cond_6
    iput v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleId:I

    .line 190
    iput v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContentId:I

    .line 192
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 193
    .local v2, density:F
    const/high16 v5, 0x40c0

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTapThreshold:I

    .line 194
    const/high16 v5, 0x42c8

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumTapVelocity:I

    .line 195
    const/high16 v5, 0x4316

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMinorVelocity:I

    .line 196
    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    .line 197
    const/high16 v5, 0x44fa

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    .line 198
    const/high16 v5, 0x447a

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVelocityUnits:I

    .line 200
    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_7

    .line 201
    iget v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    neg-int v5, v5

    iput v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    .line 202
    iget v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v5, v5

    iput v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    .line 203
    iget v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMinorVelocity:I

    neg-int v5, v5

    iput v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMinorVelocity:I

    .line 206
    :cond_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 207
    invoke-virtual {p0, v6}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 208
    return-void
.end method

.method static synthetic access$200(Lcom/lge/camera/components/MultiDirectionSlidingDrawer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mLocked:Z

    return v0
.end method

.method static synthetic access$300(Lcom/lge/camera/components/MultiDirectionSlidingDrawer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimateOnClick:Z

    return v0
.end method

.method static synthetic access$400(Lcom/lge/camera/components/MultiDirectionSlidingDrawer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->doAnimation()V

    return-void
.end method

.method private animateClose(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 490
    invoke-direct {p0, p1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->prepareTracking(I)V

    .line 491
    iget v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->performFling(IFZ)V

    .line 492
    return-void
.end method

.method private animateOpen(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 495
    invoke-direct {p0, p1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->prepareTracking(I)V

    .line 496
    iget v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->performFling(IFZ)V

    .line 497
    return-void
.end method

.method private closeDrawer()V
    .locals 2

    .prologue
    .line 928
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->moveHandle(I)V

    .line 929
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 930
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 932
    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_1

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 936
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    .line 937
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerCloseListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_0

    .line 938
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerCloseListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    goto :goto_0
.end method

.method private doAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x10

    const/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 773
    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 774
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->incrementAnimation()V

    .line 776
    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v0, :cond_4

    .line 777
    iget v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    neg-int v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 778
    iput-boolean v4, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    .line 779
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->closeDrawer()V

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 780
    :cond_1
    iget v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    iget v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    neg-int v2, v0

    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v0, v3

    :goto_1
    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_3

    .line 781
    iput-boolean v4, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    .line 782
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->openDrawer()V

    goto :goto_0

    .line 780
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v0, v3

    goto :goto_1

    .line 784
    :cond_3
    iget v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->moveHandle(I)V

    .line 785
    iget-wide v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    .line 786
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    .line 790
    :cond_4
    iget v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_6

    .line 791
    iput-boolean v4, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    .line 792
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->closeDrawer()V

    goto :goto_0

    .line 790
    :cond_5
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_2

    .line 793
    :cond_6
    iget v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 794
    iput-boolean v4, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    .line 795
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->openDrawer()V

    goto :goto_0

    .line 797
    :cond_7
    iget v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->moveHandle(I)V

    .line 798
    iget-wide v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    .line 799
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method private incrementAnimation()V
    .locals 8

    .prologue
    .line 807
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 808
    .local v1, now:J
    iget-wide v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v4, v6, v7

    .line 809
    .local v4, t:F
    iget v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    .line 810
    .local v3, position:F
    iget v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    .line 811
    .local v5, v:F
    iget-boolean v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v6, :cond_0

    iget v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedAcceleration:F

    .line 812
    .local v0, a:F
    :goto_0
    mul-float v6, v5, v4

    add-float/2addr v6, v3

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    .line 813
    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    .line 814
    iput-wide v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationLastTime:J

    .line 815
    return-void

    .line 811
    .end local v0           #a:F
    :cond_0
    iget v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedAcceleration:F

    goto :goto_0
.end method

.method private moveHandle(I)V
    .locals 12
    .parameter "position"

    .prologue
    const/4 v11, 0x0

    const/16 v9, -0x2711

    const/16 v8, -0x2712

    .line 616
    iget-object v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    .line 618
    .local v3, handle:Landroid/view/View;
    iget-boolean v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_8

    .line 619
    if-ne p1, v9, :cond_1

    .line 620
    iget-boolean v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_0

    .line 621
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    neg-int v7, v7

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 625
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->invalidate()V

    .line 712
    :goto_1
    return-void

    .line 623
    :cond_0
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_0

    .line 626
    :cond_1
    if-ne p1, v8, :cond_3

    .line 627
    iget-boolean v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_2

    .line 628
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    neg-int v7, v7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 632
    :goto_2
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->invalidate()V

    goto :goto_1

    .line 630
    :cond_2
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_2

    .line 634
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    .line 635
    .local v6, top:I
    sub-int v1, p1, v6

    .line 637
    .local v1, deltaY:I
    iget-boolean v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_6

    .line 638
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v7

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    if-le p1, v7, :cond_5

    .line 639
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v7

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int v1, v7, v6

    .line 651
    :cond_4
    :goto_3
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 653
    iget-object v2, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 654
    .local v2, frame:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 656
    .local v5, region:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 657
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 659
    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v1

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v1

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 660
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    iget-object v10, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v11, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 663
    invoke-virtual {p0, v5}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 640
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_5
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    neg-int v7, v7

    sub-int/2addr v7, v6

    if-ge v1, v7, :cond_4

    .line 641
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    neg-int v7, v7

    sub-int v1, v7, v6

    goto :goto_3

    .line 644
    :cond_6
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_7

    .line 645
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v6

    goto :goto_3

    .line 646
    :cond_7
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    if-le v1, v7, :cond_4

    .line 647
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int v1, v7, v6

    goto :goto_3

    .line 666
    .end local v1           #deltaY:I
    .end local v6           #top:I
    :cond_8
    if-ne p1, v9, :cond_a

    .line 667
    iget-boolean v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_9

    .line 668
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    neg-int v7, v7

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 672
    :goto_4
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->invalidate()V

    goto/16 :goto_1

    .line 670
    :cond_9
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_4

    .line 673
    :cond_a
    if-ne p1, v8, :cond_c

    .line 674
    iget-boolean v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_b

    .line 675
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    neg-int v7, v7

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 680
    :goto_5
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->invalidate()V

    goto/16 :goto_1

    .line 678
    :cond_b
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_5

    .line 682
    :cond_c
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 683
    .local v4, left:I
    sub-int v0, p1, v4

    .line 684
    .local v0, deltaX:I
    iget-boolean v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v7, :cond_f

    .line 685
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getRight()I

    move-result v7

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    if-le p1, v7, :cond_e

    .line 686
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getRight()I

    move-result v7

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int v0, v7, v4

    .line 697
    :cond_d
    :goto_6
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 699
    iget-object v2, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 700
    .restart local v2       #frame:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 702
    .restart local v5       #region:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 703
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 705
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v0

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 706
    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v0

    iget-object v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v9

    invoke-virtual {v5, v7, v11, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 709
    invoke-virtual {p0, v5}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 687
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_e
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    neg-int v7, v7

    sub-int/2addr v7, v4

    if-ge v0, v7, :cond_d

    .line 688
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    neg-int v7, v7

    sub-int v0, v7, v4

    goto :goto_6

    .line 691
    :cond_f
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_10

    .line 692
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v0, v7, v4

    goto :goto_6

    .line 693
    :cond_10
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    if-le v0, v7, :cond_d

    .line 694
    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int v0, v7, v4

    goto :goto_6
.end method

.method private openDrawer()V
    .locals 2

    .prologue
    .line 943
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->moveHandle(I)V

    .line 944
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 946
    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 950
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    .line 952
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerOpenListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_0

    .line 953
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerOpenListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    goto :goto_0
.end method

.method private performFling(IFZ)V
    .locals 12
    .parameter "position"
    .parameter "velocity"
    .parameter "always"

    .prologue
    .line 500
    int-to-float v8, p1

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    .line 501
    iput p2, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    .line 508
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_11

    .line 509
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v0

    .line 510
    .local v0, bottom:I
    :goto_0
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_3

    iget v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    .line 512
    .local v5, handleHeight:I
    :goto_1
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v8, p2, v8

    if-gez v8, :cond_4

    const/4 v1, 0x1

    .line 513
    .local v1, c1:Z
    :goto_2
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_8

    add-int v8, p1, v5

    sub-int v8, v0, v8

    iget v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    add-int/2addr v8, v9

    if-le v8, v5, :cond_7

    const/4 v2, 0x1

    .line 514
    .local v2, c2:Z
    :goto_3
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_c

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v8, v8

    cmpg-float v8, p2, v8

    if-gez v8, :cond_b

    const/4 v3, 0x1

    .line 515
    .local v3, c3:Z
    :goto_4
    if-nez p3, :cond_0

    if-nez v1, :cond_0

    if-eqz v2, :cond_f

    if-eqz v3, :cond_f

    .line 517
    :cond_0
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v8, v8

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedAcceleration:F

    .line 518
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_e

    .line 519
    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-lez v8, :cond_1

    .line 520
    const/4 v8, 0x0

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    .line 577
    .end local v0           #bottom:I
    .end local v5           #handleHeight:I
    :cond_1
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 578
    .local v6, now:J
    iput-wide v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationLastTime:J

    .line 579
    const-wide/16 v8, 0x10

    add-long/2addr v8, v6

    iput-wide v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    .line 580
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    .line 581
    iget-object v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 582
    iget-object v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    iget-wide v10, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 583
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->stopTracking()V

    .line 584
    return-void

    .line 509
    .end local v1           #c1:Z
    .end local v2           #c2:Z
    .end local v3           #c3:Z
    .end local v6           #now:J
    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getRight()I

    move-result v0

    goto :goto_0

    .line 510
    .restart local v0       #bottom:I
    :cond_3
    iget v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    goto :goto_1

    .line 512
    .restart local v5       #handleHeight:I
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v8, v8

    cmpl-float v8, p2, v8

    if-lez v8, :cond_6

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 513
    .restart local v1       #c1:Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_3

    :cond_8
    iget v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_9

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    :goto_6
    add-int/2addr v8, v9

    if-le p1, v8, :cond_a

    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    .line 514
    .restart local v2       #c2:Z
    :cond_b
    const/4 v3, 0x0

    goto :goto_4

    :cond_c
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v8, v8

    int-to-float v8, v8

    cmpl-float v8, p2, v8

    if-lez v8, :cond_d

    const/4 v3, 0x1

    goto :goto_4

    :cond_d
    const/4 v3, 0x0

    goto :goto_4

    .line 523
    .restart local v3       #c3:Z
    :cond_e
    const/4 v8, 0x0

    cmpg-float v8, p2, v8

    if-gez v8, :cond_1

    .line 524
    const/4 v8, 0x0

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_5

    .line 530
    :cond_f
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    neg-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedAcceleration:F

    .line 532
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_10

    .line 533
    const/4 v8, 0x0

    cmpg-float v8, p2, v8

    if-gez v8, :cond_1

    .line 534
    const/4 v8, 0x0

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_5

    .line 537
    :cond_10
    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-lez v8, :cond_1

    .line 538
    const/4 v8, 0x0

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_5

    .line 546
    .end local v0           #bottom:I
    .end local v1           #c1:Z
    .end local v2           #c2:Z
    .end local v3           #c3:Z
    .end local v5           #handleHeight:I
    :cond_11
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_14

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v8, v8

    int-to-float v8, v8

    cmpg-float v8, p2, v8

    if-gez v8, :cond_13

    const/4 v1, 0x1

    .line 547
    .restart local v1       #c1:Z
    :goto_7
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_18

    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_16

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v8

    :goto_8
    div-int/lit8 v8, v8, 0x2

    if-ge p1, v8, :cond_17

    const/4 v2, 0x1

    .line 548
    .restart local v2       #c2:Z
    :goto_9
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_1c

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v8, v8

    cmpg-float v8, p2, v8

    if-gez v8, :cond_1b

    const/4 v3, 0x1

    .line 549
    .restart local v3       #c3:Z
    :goto_a
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_1f

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v8, v9

    if-lt p1, v8, :cond_1e

    const/4 v4, 0x1

    .line 550
    .local v4, c4:Z
    :goto_b
    if-nez p3, :cond_22

    if-nez v4, :cond_22

    if-nez v1, :cond_12

    if-eqz v2, :cond_22

    if-eqz v3, :cond_22

    .line 551
    :cond_12
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v8, v8

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedAcceleration:F

    .line 553
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_21

    .line 554
    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-lez v8, :cond_1

    .line 555
    const/4 v8, 0x0

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_5

    .line 546
    .end local v1           #c1:Z
    .end local v2           #c2:Z
    .end local v3           #c3:Z
    .end local v4           #c4:Z
    :cond_13
    const/4 v1, 0x0

    goto :goto_7

    :cond_14
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v8, v8

    cmpl-float v8, p2, v8

    if-lez v8, :cond_15

    const/4 v1, 0x1

    goto :goto_7

    :cond_15
    const/4 v1, 0x0

    goto :goto_7

    .line 547
    .restart local v1       #c1:Z
    :cond_16
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v8

    goto :goto_8

    :cond_17
    const/4 v2, 0x0

    goto :goto_9

    :cond_18
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_19

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v8

    :goto_c
    div-int/lit8 v8, v8, 0x2

    if-le p1, v8, :cond_1a

    const/4 v2, 0x1

    goto :goto_9

    :cond_19
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v8

    goto :goto_c

    :cond_1a
    const/4 v2, 0x0

    goto :goto_9

    .line 548
    .restart local v2       #c2:Z
    :cond_1b
    const/4 v3, 0x0

    goto :goto_a

    :cond_1c
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v8, v8

    int-to-float v8, v8

    cmpl-float v8, p2, v8

    if-lez v8, :cond_1d

    const/4 v3, 0x1

    goto :goto_a

    :cond_1d
    const/4 v3, 0x0

    goto :goto_a

    .line 549
    .restart local v3       #c3:Z
    :cond_1e
    const/4 v4, 0x0

    goto :goto_b

    :cond_1f
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v8, v9

    if-gt p1, v8, :cond_20

    const/4 v4, 0x1

    goto :goto_b

    :cond_20
    const/4 v4, 0x0

    goto :goto_b

    .line 558
    .restart local v4       #c4:Z
    :cond_21
    const/4 v8, 0x0

    cmpg-float v8, p2, v8

    if-gez v8, :cond_1

    .line 559
    const/4 v8, 0x0

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_5

    .line 563
    :cond_22
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    neg-int v8, v8

    int-to-float v8, v8

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedAcceleration:F

    .line 565
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_23

    .line 566
    const/4 v8, 0x0

    cmpg-float v8, p2, v8

    if-gez v8, :cond_1

    .line 567
    const/4 v8, 0x0

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_5

    .line 570
    :cond_23
    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-lez v8, :cond_1

    .line 571
    const/4 v8, 0x0

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_5
.end method

.method private prepareContent()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/high16 v8, 0x4000

    const/4 v9, 0x0

    .line 715
    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    if-eqz v5, :cond_0

    .line 756
    :goto_0
    return-void

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    .line 722
    .local v0, content:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 724
    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_4

    .line 725
    iget v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    .line 726
    .local v1, handleHeight:I
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v3, v5, v6

    .line 727
    .local v3, height:I
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 729
    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_3

    .line 730
    iget v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 750
    .end local v1           #handleHeight:I
    .end local v3           #height:I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 751
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_2

    .line 752
    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 755
    :cond_2
    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 732
    .restart local v1       #handleHeight:I
    .restart local v3       #height:I
    :cond_3
    iget v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v7, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 736
    .end local v1           #handleHeight:I
    .end local v3           #height:I
    :cond_4
    iget-object v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 737
    .local v2, handleWidth:I
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v2

    iget v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v4, v5, v6

    .line 738
    .local v4, width:I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/view/View;->measure(II)V

    .line 740
    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_5

    .line 741
    iget v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    iget v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 743
    :cond_5
    iget v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v2

    iget v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method private prepareTracking(I)V
    .locals 8
    .parameter "position"

    .prologue
    const/16 v7, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 587
    iput-boolean v4, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTracking:Z

    .line 588
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 589
    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-nez v5, :cond_0

    move v2, v4

    .line 591
    .local v2, opening:Z
    :goto_0
    if-eqz v2, :cond_3

    .line 592
    iget v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v3, v3

    iput v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedAcceleration:F

    .line 593
    iget v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v3, v3

    iput v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimatedVelocity:F

    .line 594
    iget-boolean v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v3, :cond_1

    .line 595
    iget v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    neg-int v3, v3

    int-to-float v3, v3

    iput v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    .line 599
    :goto_1
    iget v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->moveHandle(I)V

    .line 600
    iput-boolean v4, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    .line 601
    iget-object v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 602
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 603
    .local v0, now:J
    iput-wide v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationLastTime:J

    .line 604
    const-wide/16 v5, 0x10

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mCurrentAnimationTime:J

    .line 605
    iput-boolean v4, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    .line 613
    .end local v0           #now:J
    :goto_2
    return-void

    .end local v2           #opening:Z
    :cond_0
    move v2, v3

    .line 589
    goto :goto_0

    .line 597
    .restart local v2       #opening:Z
    :cond_1
    iget v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    iget-boolean v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v3

    iget v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v3, v6

    :goto_3
    add-int/2addr v3, v5

    int-to-float v3, v3

    iput v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimationPosition:F

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v3

    iget v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v3, v6

    goto :goto_3

    .line 607
    :cond_3
    iget-boolean v4, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_4

    .line 608
    iput-boolean v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    .line 609
    iget-object v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 611
    :cond_4
    invoke-direct {p0, p1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->moveHandle(I)V

    goto :goto_2
.end method

.method private stopTracking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 759
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 760
    iput-boolean v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTracking:Z

    .line 762
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerScrollListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerScrollListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 766
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 768
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 770
    :cond_1
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 2

    .prologue
    .line 891
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->prepareContent()V

    .line 892
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerScrollListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

    .line 893
    .local v0, scrollListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 894
    invoke-interface {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 896
    :cond_0
    iget-boolean v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->animateClose(I)V

    .line 898
    if-eqz v0, :cond_1

    .line 899
    invoke-interface {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 901
    :cond_1
    return-void

    .line 896
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 2

    .prologue
    .line 913
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->prepareContent()V

    .line 914
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerScrollListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

    .line 915
    .local v0, scrollListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 916
    invoke-interface {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 918
    :cond_0
    iget-boolean v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->animateOpen(I)V

    .line 920
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 922
    if-eqz v0, :cond_1

    .line 923
    invoke-interface {v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 925
    :cond_1
    return-void

    .line 918
    :cond_2
    iget-object v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateToggle()V
    .locals 1

    .prologue
    .line 846
    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 847
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->animateOpen()V

    .line 851
    :goto_0
    return-void

    .line 849
    :cond_0
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->animateClose()V

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 876
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->closeDrawer()V

    .line 877
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->invalidate()V

    .line 878
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->requestLayout()V

    .line 879
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    .line 257
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getDrawingTime()J

    move-result-wide v1

    .line 258
    .local v1, drawingTime:J
    iget-object v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    .line 259
    .local v3, handle:Landroid/view/View;
    iget-boolean v4, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    .line 261
    .local v4, isVertical:Z
    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 263
    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTracking:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    if-eqz v5, :cond_b

    .line 264
    :cond_0
    iget-object v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 265
    .local v0, cache:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 266
    if-eqz v4, :cond_3

    .line 267
    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_2

    .line 268
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    invoke-virtual {p1, v0, v6, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 287
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->invalidate()V

    .line 291
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_1
    :goto_1
    return-void

    .line 270
    .restart local v0       #cache:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v0, v6, v5, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 273
    :cond_3
    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    sub-int/2addr v5, v7

    int-to-float v5, v5

    :goto_2
    invoke-virtual {p1, v0, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    goto :goto_2

    .line 276
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 277
    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v5, :cond_8

    .line 278
    if-eqz v4, :cond_6

    move v7, v6

    :goto_3
    if-eqz v4, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v6

    iget v6, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    :goto_4
    invoke-virtual {p1, v7, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 284
    :goto_5
    iget-object v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 285
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 278
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getWidth()I

    move-result v7

    sub-int/2addr v5, v7

    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v7

    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    add-int/2addr v5, v7

    int-to-float v5, v5

    move v7, v5

    goto :goto_3

    :cond_7
    move v5, v6

    goto :goto_4

    .line 281
    :cond_8
    if-eqz v4, :cond_a

    move v5, v6

    :goto_6
    if-eqz v4, :cond_9

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    :cond_9
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_5

    :cond_a
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    goto :goto_6

    .line 288
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_b
    iget-boolean v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-eqz v5, :cond_1

    .line 289
    iget-object v5, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_1
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 1044
    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 1035
    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 1026
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mLocked:Z

    .line 1027
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 212
    iget v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    .line 213
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    new-instance v1, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$DrawerToggler;-><init>(Lcom/lge/camera/components/MultiDirectionSlidingDrawer;Lcom/lge/camera/components/MultiDirectionSlidingDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    .line 220
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 225
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 347
    iget-boolean v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mLocked:Z

    if-eqz v9, :cond_1

    .line 388
    :cond_0
    :goto_0
    return v7

    .line 351
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 353
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 354
    .local v5, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 356
    .local v6, y:F
    iget-object v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 357
    .local v1, frame:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    .line 359
    .local v2, handle:Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 360
    iget-boolean v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTracking:Z

    if-nez v9, :cond_2

    float-to-int v9, v5

    float-to-int v10, v6

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 364
    :cond_2
    if-nez v0, :cond_4

    .line 365
    iput-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTracking:Z

    .line 367
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 369
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->prepareContent()V

    .line 372
    iget-object v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerScrollListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

    if-eqz v7, :cond_3

    .line 373
    iget-object v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerScrollListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v7}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 376
    :cond_3
    iget-boolean v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_5

    .line 377
    iget-object v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    .line 378
    .local v4, top:I
    float-to-int v7, v6

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTouchDelta:I

    .line 379
    invoke-direct {p0, v4}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->prepareTracking(I)V

    .line 385
    .end local v4           #top:I
    :goto_1
    iget-object v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    move v7, v8

    .line 388
    goto :goto_0

    .line 381
    :cond_5
    iget-object v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 382
    .local v3, left:I
    float-to-int v7, v5

    sub-int/2addr v7, v3

    iput v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTouchDelta:I

    .line 383
    invoke-direct {p0, v3}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->prepareTracking(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 297
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTracking:Z

    if-eqz v8, :cond_0

    .line 343
    :goto_0
    return-void

    .line 300
    :cond_0
    sub-int v7, p4, p2

    .line 301
    .local v7, width:I
    sub-int v6, p5, p3

    .line 302
    .local v6, height:I
    iget-object v1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    .line 304
    .local v1, handle:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 305
    .local v5, handleWidth:I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 310
    .local v2, handleHeight:I
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    .line 312
    .local v0, content:Landroid/view/View;
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_4

    .line 313
    sub-int v8, v7, v5

    div-int/lit8 v3, v8, 0x2

    .line 314
    .local v3, handleLeft:I
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_2

    .line 315
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_1

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v8, v6, v8

    sub-int v4, v8, v2

    .line 316
    .local v4, handleTop:I
    :goto_1
    const/4 v8, 0x0

    iget v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v9, v6, v9

    sub-int/2addr v9, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v11, v6, v11

    sub-int/2addr v11, v2

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 340
    :goto_2
    add-int v8, v3, v5

    add-int v9, v4, v2

    invoke-virtual {v1, v3, v4, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 341
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    .line 342
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    goto :goto_0

    .line 315
    .end local v4           #handleTop:I
    :cond_1
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    neg-int v4, v8

    goto :goto_1

    .line 320
    :cond_2
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_3

    iget v4, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    .line 321
    .restart local v4       #handleTop:I
    :goto_3
    const/4 v8, 0x0

    iget v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 320
    .end local v4           #handleTop:I
    :cond_3
    sub-int v8, v6, v2

    iget v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    add-int v4, v8, v9

    goto :goto_3

    .line 326
    .end local v3           #handleLeft:I
    :cond_4
    sub-int v8, v6, v2

    div-int/lit8 v4, v8, 0x2

    .line 327
    .restart local v4       #handleTop:I
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    if-eqz v8, :cond_6

    .line 328
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_5

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v8, v7, v8

    sub-int v3, v8, v5

    .line 329
    .restart local v3       #handleLeft:I
    :goto_4
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v8, v7, v8

    sub-int/2addr v8, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    iget v10, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v10, v7, v10

    sub-int/2addr v10, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 328
    .end local v3           #handleLeft:I
    :cond_5
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    neg-int v3, v8

    goto :goto_4

    .line 333
    :cond_6
    iget-boolean v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_7

    iget v3, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    .line 334
    .restart local v3       #handleLeft:I
    :goto_5
    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v8, v5

    const/4 v9, 0x0

    iget v10, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    add-int/2addr v10, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 333
    .end local v3           #handleLeft:I
    :cond_7
    sub-int v8, v7, v5

    iget v9, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    add-int v3, v8, v9

    goto :goto_5
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    .line 229
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 230
    .local v5, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 232
    .local v6, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 233
    .local v2, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 235
    .local v3, heightSpecSize:I
    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    .line 236
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    .line 240
    .local v0, handle:Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->measureChild(Landroid/view/View;II)V

    .line 242
    iget-boolean v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_2

    .line 243
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v8

    .line 244
    .local v1, height:I
    iget-object v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 252
    .end local v1           #height:I
    :goto_0
    invoke-virtual {p0, v6, v3}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->setMeasuredDimension(II)V

    .line 253
    return-void

    .line 247
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    sub-int v4, v7, v8

    .line 248
    .local v4, width:I
    iget-object v7, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21
    .parameter "event"

    .prologue
    .line 393
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mLocked:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 394
    const/16 v17, 0x1

    .line 486
    :goto_0
    return v17

    .line 397
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTracking:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 399
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 400
    .local v2, action:I
    packed-switch v2, :pswitch_data_0

    .line 486
    .end local v2           #action:I
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTracking:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAnimating:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v17

    if-eqz v17, :cond_23

    :cond_2
    const/16 v17, 0x1

    goto :goto_0

    .line 402
    .restart local v2       #action:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    :goto_2
    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTouchDelta:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->moveHandle(I)V

    goto :goto_1

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    goto :goto_2

    .line 406
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 407
    .local v13, velocityTracker:Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVelocityUnits:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 409
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v16

    .line 410
    .local v16, yVelocity:F
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v15

    .line 413
    .local v15, xVelocity:F
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mVertical:Z

    .line 414
    .local v14, vertical:Z
    if-eqz v14, :cond_b

    .line 415
    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_a

    const/4 v11, 0x1

    .line 416
    .local v11, negative:Z
    :goto_3
    const/16 v17, 0x0

    cmpg-float v17, v15, v17

    if-gez v17, :cond_4

    .line 417
    neg-float v15, v15

    .line 419
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v15, v17

    if-gtz v17, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v15, v17

    if-gez v17, :cond_7

    .line 421
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v15, v0

    .line 434
    :cond_7
    :goto_4
    float-to-double v0, v15

    move-wide/from16 v17, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-float v12, v0

    .line 435
    .local v12, velocity:F
    if-eqz v11, :cond_8

    .line 436
    neg-float v12, v12

    .line 439
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTop()I

    move-result v10

    .line 440
    .local v10, handleTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 441
    .local v8, handleLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 442
    .local v7, handleBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandle:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getRight()I

    move-result v9

    .line 444
    .local v9, handleRight:I
    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumTapVelocity:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    cmpg-float v17, v17, v18

    if-gez v17, :cond_21

    .line 450
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    .line 451
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getTop()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTapThreshold:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-le v7, v0, :cond_10

    const/4 v3, 0x1

    .line 452
    .local v3, c1:Z
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-nez v17, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTapThreshold:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    if-ge v7, v0, :cond_11

    const/4 v4, 0x1

    .line 453
    .local v4, c2:Z
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getRight()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTapThreshold:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-le v9, v0, :cond_12

    const/4 v5, 0x1

    .line 454
    .local v5, c3:Z
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-nez v17, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTapThreshold:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    if-ge v9, v0, :cond_13

    const/4 v6, 0x1

    .line 462
    .local v6, c4:Z
    :goto_8
    if-eqz v14, :cond_19

    if-nez v3, :cond_9

    if-eqz v4, :cond_1a

    .line 464
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mAllowSingleTap:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1e

    .line 465
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->playSoundEffect(I)V

    .line 467
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1c

    .line 468
    if-eqz v14, :cond_1b

    .end local v10           #handleTop:I
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->animateClose(I)V

    goto/16 :goto_1

    .line 415
    .end local v3           #c1:Z
    .end local v4           #c2:Z
    .end local v5           #c3:Z
    .end local v6           #c4:Z
    .end local v7           #handleBottom:I
    .end local v8           #handleLeft:I
    .end local v9           #handleRight:I
    .end local v11           #negative:Z
    .end local v12           #velocity:F
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_3

    .line 424
    :cond_b
    const/16 v17, 0x0

    cmpg-float v17, v15, v17

    if-gez v17, :cond_f

    const/4 v11, 0x1

    .line 425
    .restart local v11       #negative:Z
    :goto_a
    const/16 v17, 0x0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_c

    .line 426
    move/from16 v0, v16

    neg-float v0, v0

    move/from16 v16, v0

    .line 428
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    move/from16 v17, v0

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v16, v17

    if-gtz v17, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mInvert:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpg-float v17, v16, v17

    if-gez v17, :cond_7

    .line 430
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mMaximumMinorVelocity:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    goto/16 :goto_4

    .line 424
    .end local v11           #negative:Z
    :cond_f
    const/4 v11, 0x0

    goto :goto_a

    .line 451
    .restart local v7       #handleBottom:I
    .restart local v8       #handleLeft:I
    .restart local v9       #handleRight:I
    .restart local v10       #handleTop:I
    .restart local v11       #negative:Z
    .restart local v12       #velocity:F
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 452
    .restart local v3       #c1:Z
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 453
    .restart local v4       #c2:Z
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 454
    .restart local v5       #c3:Z
    :cond_13
    const/4 v6, 0x0

    goto/16 :goto_8

    .line 456
    .end local v3           #c1:Z
    .end local v4           #c2:Z
    .end local v5           #c3:Z
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTapThreshold:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    if-ge v10, v0, :cond_15

    const/4 v3, 0x1

    .line 457
    .restart local v3       #c1:Z
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-nez v17, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getBottom()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getTop()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleHeight:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTapThreshold:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-le v10, v0, :cond_16

    const/4 v4, 0x1

    .line 458
    .restart local v4       #c2:Z
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTapThreshold:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTopOffset:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    if-ge v8, v0, :cond_17

    const/4 v5, 0x1

    .line 459
    .restart local v5       #c3:Z
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    move/from16 v17, v0

    if-nez v17, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mBottomOffset:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getRight()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->getLeft()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mHandleWidth:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mTapThreshold:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    if-le v8, v0, :cond_18

    const/4 v6, 0x1

    .restart local v6       #c4:Z
    :goto_e
    goto/16 :goto_8

    .line 456
    .end local v3           #c1:Z
    .end local v4           #c2:Z
    .end local v5           #c3:Z
    .end local v6           #c4:Z
    :cond_15
    const/4 v3, 0x0

    goto :goto_b

    .line 457
    .restart local v3       #c1:Z
    :cond_16
    const/4 v4, 0x0

    goto :goto_c

    .line 458
    .restart local v4       #c2:Z
    :cond_17
    const/4 v5, 0x0

    goto :goto_d

    .line 459
    .restart local v5       #c3:Z
    :cond_18
    const/4 v6, 0x0

    goto :goto_e

    .line 462
    .restart local v6       #c4:Z
    :cond_19
    if-nez v5, :cond_9

    if-nez v6, :cond_9

    .line 476
    :cond_1a
    if-eqz v14, :cond_20

    .end local v10           #handleTop:I
    :goto_f
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v10, v12, v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v10       #handleTop:I
    :cond_1b
    move v10, v8

    .line 468
    goto/16 :goto_9

    .line 470
    :cond_1c
    if-eqz v14, :cond_1d

    .end local v10           #handleTop:I
    :goto_10
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->animateOpen(I)V

    goto/16 :goto_1

    .restart local v10       #handleTop:I
    :cond_1d
    move v10, v8

    goto :goto_10

    .line 473
    :cond_1e
    if-eqz v14, :cond_1f

    .end local v10           #handleTop:I
    :goto_11
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v10, v12, v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v10       #handleTop:I
    :cond_1f
    move v10, v8

    goto :goto_11

    :cond_20
    move v10, v8

    .line 476
    goto :goto_f

    .line 479
    .end local v3           #c1:Z
    .end local v4           #c2:Z
    .end local v5           #c3:Z
    .end local v6           #c4:Z
    :cond_21
    if-eqz v14, :cond_22

    .end local v10           #handleTop:I
    :goto_12
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v10, v12, v1}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v10       #handleTop:I
    :cond_22
    move v10, v8

    goto :goto_12

    .line 486
    .end local v2           #action:I
    .end local v7           #handleBottom:I
    .end local v8           #handleLeft:I
    .end local v9           #handleRight:I
    .end local v10           #handleTop:I
    .end local v11           #negative:Z
    .end local v12           #velocity:F
    .end local v13           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v14           #vertical:Z
    .end local v15           #xVelocity:F
    .end local v16           #yVelocity:F
    :cond_23
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 400
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public open()V
    .locals 1

    .prologue
    .line 861
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->openDrawer()V

    .line 862
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->invalidate()V

    .line 863
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->requestLayout()V

    .line 865
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 866
    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerCloseListener;)V
    .locals 0
    .parameter "onDrawerCloseListener"

    .prologue
    .line 976
    iput-object p1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerCloseListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerCloseListener;

    .line 977
    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerOpenListener;)V
    .locals 0
    .parameter "onDrawerOpenListener"

    .prologue
    .line 965
    iput-object p1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerOpenListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerOpenListener;

    .line 966
    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;)V
    .locals 0
    .parameter "onDrawerScrollListener"

    .prologue
    .line 988
    iput-object p1, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mOnDrawerScrollListener:Lcom/lge/camera/components/MultiDirectionSlidingDrawer$OnDrawerScrollListener;

    .line 989
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 827
    iget-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 828
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->openDrawer()V

    .line 832
    :goto_0
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->invalidate()V

    .line 833
    invoke-virtual {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->requestLayout()V

    .line 834
    return-void

    .line 830
    :cond_0
    invoke-direct {p0}, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->closeDrawer()V

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 1017
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/camera/components/MultiDirectionSlidingDrawer;->mLocked:Z

    .line 1018
    return-void
.end method
