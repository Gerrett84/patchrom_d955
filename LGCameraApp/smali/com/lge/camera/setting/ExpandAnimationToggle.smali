.class public Lcom/lge/camera/setting/ExpandAnimationToggle;
.super Landroid/view/animation/Animation;
.source "ExpandAnimationToggle.java"


# instance fields
.field private mAnimatedView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mIsVisibleAfter:Z

.field private mMarginEnd:I

.field private mMarginStart:I

.field private mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private mWasEndedAlready:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 4
    .parameter "context"
    .parameter "view"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 16
    iput-boolean v1, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mIsVisibleAfter:Z

    .line 17
    iput-boolean v1, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mWasEndedAlready:Z

    .line 28
    iput-object p1, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mContext:Landroid/content/Context;

    .line 29
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mContext:Landroid/content/Context;

    const v2, 0x10a0004

    invoke-virtual {p0, v0, v2}, Lcom/lge/camera/setting/ExpandAnimationToggle;->setInterpolator(Landroid/content/Context;I)V

    .line 31
    int-to-long v2, p3

    invoke-virtual {p0, v2, v3}, Lcom/lge/camera/setting/ExpandAnimationToggle;->setDuration(J)V

    .line 33
    iput-object p2, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mAnimatedView:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    .line 35
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mAnimatedView:Landroid/view/View;

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 36
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mIsVisibleAfter:Z

    .line 41
    iget-boolean v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mIsVisibleAfter:Z

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    neg-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mMarginStart:I

    .line 46
    iget v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mMarginStart:I

    if-nez v0, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    :goto_1
    iput v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mMarginEnd:I

    .line 48
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    new-instance v0, Lcom/lge/camera/setting/ExpandAnimationToggle$1;

    invoke-direct {v0, p0}, Lcom/lge/camera/setting/ExpandAnimationToggle$1;-><init>(Lcom/lge/camera/setting/ExpandAnimationToggle;)V

    invoke-virtual {p0, v0}, Lcom/lge/camera/setting/ExpandAnimationToggle;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 68
    return-void

    :cond_1
    move v0, v1

    .line 39
    goto :goto_0

    :cond_2
    move v0, v1

    .line 46
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/lge/camera/setting/ExpandAnimationToggle;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mAnimatedView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .parameter "interpolatedTime"
    .parameter "t"

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->applyTransformation(FLandroid/view/animation/Transformation;)V

    .line 74
    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mMarginStart:I

    iget v2, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mMarginEnd:I

    iget v3, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mMarginStart:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 80
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-boolean v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mWasEndedAlready:Z

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mViewLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mMarginEnd:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 85
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mAnimatedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 87
    iget-boolean v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mIsVisibleAfter:Z

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mAnimatedView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/camera/setting/ExpandAnimationToggle;->mWasEndedAlready:Z

    goto :goto_0
.end method
