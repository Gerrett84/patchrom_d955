.class public Lcom/android/lgesettings/widget/ChartSweepView;
.super Landroid/view/View;
.source "ChartSweepView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/lgesettings/widget/ChartSweepView$OnSweepListener;
    }
.end annotation


# instance fields
.field private mAxis:Lcom/android/lgesettings/widget/ChartAxis;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContentOffset:Landroid/graphics/Rect;

.field private mDragInterval:J

.field private mFollowAxis:I

.field private mLabelColor:I

.field private mLabelLayout:Landroid/text/DynamicLayout;

.field private mLabelMinSize:I

.field private mLabelOffset:F

.field private mLabelSize:F

.field private mLabelTemplate:Landroid/text/SpannableStringBuilder;

.field private mLabelTemplateRes:I

.field private mLabelValue:J

.field private mListener:Lcom/android/lgesettings/widget/ChartSweepView$OnSweepListener;

.field private mMargins:Landroid/graphics/Rect;

.field private mNeighborMargin:F

.field private mNeighbors:[Lcom/android/lgesettings/widget/ChartSweepView;

.field private mOutlinePaint:Landroid/graphics/Paint;

.field private mSweep:Landroid/graphics/drawable/Drawable;

.field private mSweepOffset:Landroid/graphics/Point;

.field private mSweepPadding:Landroid/graphics/Rect;

.field private mTouchMode:I

.field private mTracking:Landroid/view/MotionEvent;

.field private mTrackingStart:F

.field private mValidAfter:J

.field private mValidAfterDynamic:Lcom/android/lgesettings/widget/ChartSweepView;

.field private mValidBefore:J

.field private mValidBeforeDynamic:Lcom/android/lgesettings/widget/ChartSweepView;

.field private mValue:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/lgesettings/widget/ChartSweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/lgesettings/widget/ChartSweepView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    .line 58
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    .line 60
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    .line 62
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    .line 87
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    .line 92
    iput v3, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mTouchMode:I

    .line 100
    const-wide/16 v1, 0x1

    iput-wide v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mDragInterval:J

    .line 119
    new-array v1, v3, [Lcom/android/lgesettings/widget/ChartSweepView;

    iput-object v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mNeighbors:[Lcom/android/lgesettings/widget/ChartSweepView;

    .line 159
    new-instance v1, Lcom/android/lgesettings/widget/ChartSweepView$1;

    invoke-direct {v1, p0}, Lcom/android/lgesettings/widget/ChartSweepView$1;-><init>(Lcom/android/lgesettings/widget/ChartSweepView;)V

    iput-object v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 132
    sget-object v1, Lcom/android/lgesettings/R$styleable;->ChartSweepView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 135
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->setSweepDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->setFollowAxis(I)V

    .line 137
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->setNeighborMargin(F)V

    .line 139
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->setLabelMinSize(I)V

    .line 140
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->setLabelTemplate(I)V

    .line 141
    const/4 v1, 0x5

    const v2, -0xffff01

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->setLabelColor(I)V

    .line 144
    const v1, 0x7f02009c

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->setBackgroundResource(I)V

    .line 146
    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 147
    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 148
    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 150
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/widget/ChartSweepView;->setClickable(Z)V

    .line 153
    invoke-virtual {p0, v4}, Lcom/android/lgesettings/widget/ChartSweepView;->setFocusable(Z)V

    .line 154
    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    invoke-virtual {p0, v3}, Lcom/android/lgesettings/widget/ChartSweepView;->setWillNotDraw(Z)V

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/android/lgesettings/widget/ChartSweepView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->dispatchRequestEdit()V

    return-void
.end method

.method private buildClampRect(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;
    .locals 9
    .parameter "parentContent"
    .parameter "afterValue"
    .parameter "beforeValue"
    .parameter "margin"

    .prologue
    .line 619
    iget-object v7, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mAxis:Lcom/android/lgesettings/widget/ChartAxis;

    instance-of v7, v7, Lcom/android/lgesettings/widget/InvertedChartAxis;

    if-eqz v7, :cond_0

    .line 620
    move-wide v5, p4

    .line 621
    .local v5, temp:J
    move-wide p4, p2

    .line 622
    move-wide p2, v5

    .line 625
    .end local v5           #temp:J
    :cond_0
    const-wide/high16 v7, -0x8000

    cmp-long v7, p2, v7

    if-eqz v7, :cond_3

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, p2, v7

    if-eqz v7, :cond_3

    const/4 v1, 0x1

    .line 626
    .local v1, afterValid:Z
    :goto_0
    const-wide/high16 v7, -0x8000

    cmp-long v7, p4, v7

    if-eqz v7, :cond_4

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v7, p4, v7

    if-eqz v7, :cond_4

    const/4 v3, 0x1

    .line 628
    .local v3, beforeValid:Z
    :goto_1
    iget-object v7, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mAxis:Lcom/android/lgesettings/widget/ChartAxis;

    invoke-interface {v7, p2, p3}, Lcom/android/lgesettings/widget/ChartAxis;->convertToPoint(J)F

    move-result v7

    add-float v0, v7, p6

    .line 629
    .local v0, afterPoint:F
    iget-object v7, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mAxis:Lcom/android/lgesettings/widget/ChartAxis;

    invoke-interface {v7, p4, p5}, Lcom/android/lgesettings/widget/ChartAxis;->convertToPoint(J)F

    move-result v7

    sub-float v2, v7, p6

    .line 631
    .local v2, beforePoint:F
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 632
    .local v4, clampRect:Landroid/graphics/Rect;
    iget v7, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mFollowAxis:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    .line 633
    if-eqz v3, :cond_1

    iget v7, v4, Landroid/graphics/Rect;->top:I

    float-to-int v8, v2

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 634
    :cond_1
    if-eqz v1, :cond_2

    iget v7, v4, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    add-float/2addr v7, v0

    float-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 639
    :cond_2
    :goto_2
    return-object v4

    .line 625
    .end local v0           #afterPoint:F
    .end local v1           #afterValid:Z
    .end local v2           #beforePoint:F
    .end local v3           #beforeValid:Z
    .end local v4           #clampRect:Landroid/graphics/Rect;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 626
    .restart local v1       #afterValid:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 636
    .restart local v0       #afterPoint:F
    .restart local v2       #beforePoint:F
    .restart local v3       #beforeValid:Z
    .restart local v4       #clampRect:Landroid/graphics/Rect;
    :cond_5
    if-eqz v3, :cond_6

    iget v7, v4, Landroid/graphics/Rect;->left:I

    float-to-int v8, v2

    add-int/2addr v7, v8

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 637
    :cond_6
    if-eqz v1, :cond_2

    iget v7, v4, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    add-float/2addr v7, v0

    float-to-int v7, v7

    iput v7, v4, Landroid/graphics/Rect;->left:I

    goto :goto_2
.end method

.method private computeClampRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9
    .parameter "parentContent"

    .prologue
    .line 607
    iget-wide v2, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mValidAfter:J

    iget-wide v4, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mValidBefore:J

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/lgesettings/widget/ChartSweepView;->buildClampRect(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;

    move-result-object v8

    .line 608
    .local v8, rect:Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getValidAfterDynamic()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getValidBeforeDynamic()J

    move-result-wide v4

    iget v6, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mNeighborMargin:F

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/lgesettings/widget/ChartSweepView;->buildClampRect(Landroid/graphics/Rect;JJF)Landroid/graphics/Rect;

    move-result-object v7

    .line 611
    .local v7, dynamicRect:Landroid/graphics/Rect;
    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    invoke-virtual {v8}, Landroid/graphics/Rect;->setEmpty()V

    .line 614
    :cond_0
    return-object v8
.end method

.method private dispatchOnSweep(Z)V
    .locals 1
    .parameter "sweepDone"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mListener:Lcom/android/lgesettings/widget/ChartSweepView$OnSweepListener;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mListener:Lcom/android/lgesettings/widget/ChartSweepView$OnSweepListener;

    invoke-interface {v0, p0, p1}, Lcom/android/lgesettings/widget/ChartSweepView$OnSweepListener;->onSweep(Lcom/android/lgesettings/widget/ChartSweepView;Z)V

    .line 209
    :cond_0
    return-void
.end method

.method private dispatchRequestEdit()V
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mListener:Lcom/android/lgesettings/widget/ChartSweepView$OnSweepListener;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mListener:Lcom/android/lgesettings/widget/ChartSweepView$OnSweepListener;

    invoke-interface {v0, p0}, Lcom/android/lgesettings/widget/ChartSweepView$OnSweepListener;->requestEdit(Lcom/android/lgesettings/widget/ChartSweepView;)V

    .line 215
    :cond_0
    return-void
.end method

.method public static getLabelBottom(Lcom/android/lgesettings/widget/ChartSweepView;)F
    .locals 2
    .parameter "view"

    .prologue
    .line 761
    invoke-static {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getLabelTop(Lcom/android/lgesettings/widget/ChartSweepView;)F

    move-result v0

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public static getLabelTop(Lcom/android/lgesettings/widget/ChartSweepView;)F
    .locals 2
    .parameter "view"

    .prologue
    .line 757
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getY()F

    move-result v0

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public static getLabelWidth(Lcom/android/lgesettings/widget/ChartSweepView;)F
    .locals 2
    .parameter "view"

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v0}, Landroid/text/DynamicLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v1}, Landroid/text/DynamicLayout;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getParentContentRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 575
    .local v0, parent:Landroid/view/View;
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private getTargetInset()F
    .locals 5

    .prologue
    const/high16 v4, 0x4000

    .line 190
    iget v2, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mFollowAxis:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 191
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    int-to-float v0, v2

    .line 193
    .local v0, targetHeight:F
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    div-float v3, v0, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    .line 197
    .end local v0           #targetHeight:F
    :goto_0
    return v2

    .line 195
    :cond_0
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    int-to-float v1, v2

    .line 197
    .local v1, targetWidth:F
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    div-float v3, v1, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    goto :goto_0
.end method

.method private getTouchDistanceFromTarget(Landroid/view/MotionEvent;)F
    .locals 3
    .parameter "eventInParent"

    .prologue
    .line 426
    iget v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mFollowAxis:I

    if-nez v0, :cond_0

    .line 427
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getX()F

    move-result v1

    invoke-direct {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getTargetInset()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 429
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getY()F

    move-result v1

    invoke-direct {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getTargetInset()F

    move-result v2

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_0
.end method

.method private getValidAfterDynamic()J
    .locals 3

    .prologue
    .line 591
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/lgesettings/widget/ChartSweepView;

    .line 592
    .local v0, dynamic:Lcom/android/lgesettings/widget/ChartSweepView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/lgesettings/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/lgesettings/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x8000

    goto :goto_0
.end method

.method private getValidBeforeDynamic()J
    .locals 3

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/lgesettings/widget/ChartSweepView;

    .line 597
    .local v0, dynamic:Lcom/android/lgesettings/widget/ChartSweepView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/lgesettings/widget/ChartSweepView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/lgesettings/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method private invalidateLabel()V
    .locals 8

    .prologue
    const-wide v6, 0xfa00000000L

    .line 289
    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mAxis:Lcom/android/lgesettings/widget/ChartAxis;

    if-eqz v1, :cond_1

    .line 290
    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mAxis:Lcom/android/lgesettings/widget/ChartAxis;

    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    iget-wide v4, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mValue:J

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/lgesettings/widget/ChartAxis;->buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelValue:J

    .line 291
    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->invalidateLabelOffset()V

    .line 293
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->invalidate()V

    .line 298
    :goto_0
    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mAxis:Lcom/android/lgesettings/widget/ChartAxis;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mAxis:Lcom/android/lgesettings/widget/ChartAxis;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, instanceName:Ljava/lang/String;
    const-string v1, "TimeAxis"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    iget-wide v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelValue:J

    cmp-long v1, v1, v6

    if-lez v1, :cond_0

    .line 302
    iput-wide v6, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelValue:J

    .line 306
    .end local v0           #instanceName:Ljava/lang/String;
    :cond_0
    return-void

    .line 295
    :cond_1
    iget-wide v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mValue:J

    iput-wide v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelValue:J

    goto :goto_0
.end method

.method private invalidateLabelTemplate()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 265
    iget v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelTemplateRes:I

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelTemplateRes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 268
    .local v8, template:Ljava/lang/CharSequence;
    new-instance v2, Landroid/text/TextPaint;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Landroid/text/TextPaint;-><init>(I)V

    .line 269
    .local v2, paint:Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v2, Landroid/text/TextPaint;->density:F

    .line 270
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 271
    iget v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelColor:I

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 274
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    .line 275
    new-instance v0, Landroid/text/DynamicLayout;

    iget-object v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    const/16 v3, 0x400

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    .line 277
    invoke-direct {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->invalidateLabel()V

    .line 284
    .end local v2           #paint:Landroid/text/TextPaint;
    .end local v8           #template:Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->invalidate()V

    .line 285
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->requestLayout()V

    .line 286
    return-void

    .line 280
    :cond_0
    iput-object v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelTemplate:Landroid/text/SpannableStringBuilder;

    .line 281
    iput-object v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    goto :goto_0
.end method


# virtual methods
.method public addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 583
    return-void
.end method

.method public addOnSweepListener(Lcom/android/lgesettings/widget/ChartSweepView$OnSweepListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mListener:Lcom/android/lgesettings/widget/ChartSweepView$OnSweepListener;

    .line 203
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 644
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 645
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 648
    :cond_0
    return-void
.end method

.method public getFollowAxis()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mFollowAxis:I

    return v0
.end method

.method public getLabelValue()J
    .locals 2

    .prologue
    .line 380
    iget-wide v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelValue:J

    return-wide v0
.end method

.method public getMargins()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getPoint()F
    .locals 3

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mAxis:Lcom/android/lgesettings/widget/ChartAxis;

    iget-wide v1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mValue:J

    invoke-interface {v0, v1, v2}, Lcom/android/lgesettings/widget/ChartAxis;->convertToPoint(J)F

    move-result v0

    .line 388
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 376
    iget-wide v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mValue:J

    return-wide v0
.end method

.method init(Lcom/android/lgesettings/widget/ChartAxis;)V
    .locals 1
    .parameter "axis"

    .prologue
    .line 166
    const-string v0, "missing axis"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/lgesettings/widget/ChartAxis;

    iput-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mAxis:Lcom/android/lgesettings/widget/ChartAxis;

    .line 167
    return-void
.end method

.method public invalidateLabelOffset()V
    .locals 6

    .prologue
    const/high16 v5, 0x4000

    const/4 v4, 0x0

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, labelOffset:F
    iget v2, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mFollowAxis:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 315
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/lgesettings/widget/ChartSweepView;

    if-eqz v2, :cond_3

    .line 316
    invoke-static {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getLabelWidth(Lcom/android/lgesettings/widget/ChartSweepView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-static {v3}, Lcom/android/lgesettings/widget/ChartSweepView;->getLabelWidth(Lcom/android/lgesettings/widget/ChartSweepView;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelSize:F

    .line 317
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-static {v2}, Lcom/android/lgesettings/widget/ChartSweepView;->getLabelTop(Lcom/android/lgesettings/widget/ChartSweepView;)F

    move-result v2

    invoke-static {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getLabelBottom(Lcom/android/lgesettings/widget/ChartSweepView;)F

    move-result v3

    sub-float v1, v2, v3

    .line 318
    .local v1, margin:F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_0

    .line 319
    div-float v0, v1, v5

    .line 334
    .end local v1           #margin:F
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelSize:F

    iget v3, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelMinSize:I

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelSize:F

    .line 337
    iget v2, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelOffset:F

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_2

    .line 338
    iput v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelOffset:F

    .line 339
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->invalidate()V

    .line 340
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/lgesettings/widget/ChartSweepView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/lgesettings/widget/ChartSweepView;->invalidateLabelOffset()V

    .line 341
    :cond_1
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/lgesettings/widget/ChartSweepView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/lgesettings/widget/ChartSweepView;->invalidateLabelOffset()V

    .line 343
    :cond_2
    return-void

    .line 321
    :cond_3
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/lgesettings/widget/ChartSweepView;

    if-eqz v2, :cond_4

    .line 322
    invoke-static {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getLabelWidth(Lcom/android/lgesettings/widget/ChartSweepView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-static {v3}, Lcom/android/lgesettings/widget/ChartSweepView;->getLabelWidth(Lcom/android/lgesettings/widget/ChartSweepView;)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelSize:F

    .line 323
    invoke-static {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getLabelTop(Lcom/android/lgesettings/widget/ChartSweepView;)F

    move-result v2

    iget-object v3, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/lgesettings/widget/ChartSweepView;

    invoke-static {v3}, Lcom/android/lgesettings/widget/ChartSweepView;->getLabelBottom(Lcom/android/lgesettings/widget/ChartSweepView;)F

    move-result v3

    sub-float v1, v2, v3

    .line 324
    .restart local v1       #margin:F
    cmpg-float v2, v1, v4

    if-gez v2, :cond_0

    .line 325
    neg-float v2, v1

    div-float v0, v2, v5

    goto :goto_0

    .line 328
    .end local v1           #margin:F
    :cond_4
    invoke-static {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getLabelWidth(Lcom/android/lgesettings/widget/ChartSweepView;)F

    move-result v2

    iput v2, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelSize:F

    goto :goto_0
.end method

.method public isTouchCloserTo(Landroid/view/MotionEvent;Lcom/android/lgesettings/widget/ChartSweepView;)Z
    .locals 3
    .parameter "eventInParent"
    .parameter "another"

    .prologue
    .line 420
    invoke-direct {p0, p1}, Lcom/android/lgesettings/widget/ChartSweepView;->getTouchDistanceFromTarget(Landroid/view/MotionEvent;)F

    move-result v1

    .line 421
    .local v1, selfDist:F
    invoke-direct {p2, p1}, Lcom/android/lgesettings/widget/ChartSweepView;->getTouchDistanceFromTarget(Landroid/view/MotionEvent;)F

    move-result v0

    .line 422
    .local v0, anotherDist:F
    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 347
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 348
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 351
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 9
    .parameter "newConfig"

    .prologue
    const/high16 v5, 0x42c8

    .line 770
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 772
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 773
    .local v0, downTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 774
    .local v2, eventTime:J
    const/4 v4, 0x1

    const/4 v7, 0x0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 775
    .local v8, event:Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lcom/android/lgesettings/widget/ChartSweepView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 776
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 720
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 722
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getWidth()I

    move-result v4

    .line 723
    .local v4, width:I
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getHeight()I

    move-result v2

    .line 726
    .local v2, height:I
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    if-eqz v5, :cond_0

    .line 727
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 729
    .local v1, count:I
    iget v5, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelSize:F

    const/high16 v6, 0x4480

    sub-float v0, v5, v6

    .line 730
    .local v0, alignOffset:F
    iget-object v5, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelOffset:F

    add-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 732
    iget-object v5, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v5, p1}, Landroid/text/DynamicLayout;->draw(Landroid/graphics/Canvas;)V

    .line 734
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 735
    iget v5, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelSize:F

    float-to-int v3, v5

    .line 740
    .end local v0           #alignOffset:F
    .end local v1           #count:I
    .local v3, labelSize:I
    :goto_0
    iget v5, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mFollowAxis:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 741
    iget-object v5, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v7, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v4

    iget-object v8, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 748
    :goto_1
    iget-object v5, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 754
    return-void

    .line 737
    .end local v3           #labelSize:I
    :cond_0
    const/4 v3, 0x0

    .restart local v3       #labelSize:I
    goto :goto_0

    .line 744
    :cond_1
    iget-object v5, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    iget-object v7, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v2

    invoke-virtual {v5, v6, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 714
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 715
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->invalidateLabelOffset()V

    .line 716
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v12, 0x0

    .line 654
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    if-eqz v9, :cond_0

    .line 655
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 656
    .local v3, sweepHeight:I
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    invoke-virtual {v9}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v6

    .line 658
    .local v6, templateHeight:I
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->x:I

    .line 659
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->y:I

    .line 660
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    div-int/lit8 v10, v6, 0x2

    int-to-float v10, v10

    invoke-direct {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getTargetInset()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Landroid/graphics/Point;->y:I

    .line 661
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/android/lgesettings/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 669
    .end local v3           #sweepHeight:I
    .end local v6           #templateHeight:I
    :goto_0
    iget v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mFollowAxis:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    .line 670
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    iget-object v10, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v9, v10

    .line 672
    .local v4, targetHeight:I
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    div-int/lit8 v11, v4, 0x2

    add-int/2addr v10, v11

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 673
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iput v12, v9, Landroid/graphics/Rect;->bottom:I

    .line 674
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 675
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 685
    .end local v4           #targetHeight:I
    :goto_1
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    invoke-virtual {v9, v12, v12, v12, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 688
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getMeasuredWidth()I

    move-result v8

    .line 689
    .local v8, widthBefore:I
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getMeasuredHeight()I

    move-result v1

    .line 690
    .local v1, heightBefore:I
    iget v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mFollowAxis:I

    if-nez v9, :cond_2

    .line 691
    mul-int/lit8 v7, v8, 0x3

    .line 692
    .local v7, widthAfter:I
    invoke-virtual {p0, v7, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 693
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    sub-int v10, v7, v8

    div-int/lit8 v10, v10, 0x2

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 695
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    mul-int/lit8 v2, v9, 0x2

    .line 696
    .local v2, offset:I
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    .line 697
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    .line 708
    .end local v7           #widthAfter:I
    :goto_2
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->offset(II)V

    .line 709
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    neg-int v10, v10

    iget-object v11, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    neg-int v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Rect;->offset(II)V

    .line 710
    return-void

    .line 664
    .end local v1           #heightBefore:I
    .end local v2           #offset:I
    .end local v8           #widthBefore:I
    :cond_0
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->x:I

    .line 665
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepOffset:Landroid/graphics/Point;

    iput v12, v9, Landroid/graphics/Point;->y:I

    .line 666
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/android/lgesettings/widget/ChartSweepView;->setMeasuredDimension(II)V

    goto/16 :goto_0

    .line 677
    :cond_1
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    sub-int v5, v9, v10

    .line 679
    .local v5, targetWidth:I
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    div-int/lit8 v11, v5, 0x2

    add-int/2addr v10, v11

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->left:I

    .line 680
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iput v12, v9, Landroid/graphics/Rect;->right:I

    .line 681
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    neg-int v10, v10

    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 682
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_1

    .line 699
    .end local v5           #targetWidth:I
    .restart local v1       #heightBefore:I
    .restart local v8       #widthBefore:I
    :cond_2
    mul-int/lit8 v0, v1, 0x2

    .line 700
    .local v0, heightAfter:I
    invoke-virtual {p0, v8, v0}, Lcom/android/lgesettings/widget/ChartSweepView;->setMeasuredDimension(II)V

    .line 701
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    sub-int v10, v0, v1

    div-int/lit8 v10, v10, 0x2

    invoke-virtual {v9, v12, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 703
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v2, v9, 0x2

    .line 704
    .restart local v2       #offset:I
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mContentOffset:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 705
    iget-object v9, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v2

    iput v10, v9, Landroid/graphics/Rect;->right:I

    goto/16 :goto_2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .parameter "event"

    .prologue
    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/widget/ChartSweepView;->isEnabled()Z

    move-result v21

    if-nez v21, :cond_0

    const/16 v21, 0x0

    .line 548
    :goto_0
    return v21

    .line 437
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 438
    .local v15, parent:Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v21

    packed-switch v21, :pswitch_data_0

    .line 548
    const/16 v21, 0x0

    goto :goto_0

    .line 444
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mFollowAxis:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    .line 445
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getWidth()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x8

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_1

    const/4 v3, 0x1

    .line 446
    .local v3, acceptDrag:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/text/DynamicLayout;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_2

    const/4 v4, 0x1

    .line 454
    .local v4, acceptLabel:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v11

    .line 455
    .local v11, eventInParent:Landroid/view/MotionEvent;
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getLeft()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getTop()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v11, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 458
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mNeighbors:[Lcom/android/lgesettings/widget/ChartSweepView;

    .local v5, arr$:[Lcom/android/lgesettings/widget/ChartSweepView;
    array-length v13, v5

    .local v13, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_3
    if-ge v12, v13, :cond_9

    aget-object v14, v5, v12

    .line 459
    .local v14, neighbor:Lcom/android/lgesettings/widget/ChartSweepView;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v14}, Lcom/android/lgesettings/widget/ChartSweepView;->isTouchCloserTo(Landroid/view/MotionEvent;Lcom/android/lgesettings/widget/ChartSweepView;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 460
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 445
    .end local v3           #acceptDrag:Z
    .end local v4           #acceptLabel:Z
    .end local v5           #arr$:[Lcom/android/lgesettings/widget/ChartSweepView;
    .end local v11           #eventInParent:Landroid/view/MotionEvent;
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v14           #neighbor:Lcom/android/lgesettings/widget/ChartSweepView;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 446
    .restart local v3       #acceptDrag:Z
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    goto :goto_2

    .line 449
    .end local v3           #acceptDrag:Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    mul-int/lit8 v23, v23, 0x8

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_5

    const/4 v3, 0x1

    .line 450
    .restart local v3       #acceptDrag:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelLayout:Landroid/text/DynamicLayout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/text/DynamicLayout;->getHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_6

    const/4 v4, 0x1

    .restart local v4       #acceptLabel:Z
    :goto_5
    goto :goto_2

    .line 449
    .end local v3           #acceptDrag:Z
    .end local v4           #acceptLabel:Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    .line 450
    .restart local v3       #acceptDrag:Z
    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    goto :goto_5

    .line 458
    .restart local v4       #acceptLabel:Z
    .restart local v5       #arr$:[Lcom/android/lgesettings/widget/ChartSweepView;
    .restart local v11       #eventInParent:Landroid/view/MotionEvent;
    .restart local v12       #i$:I
    .restart local v13       #len$:I
    .restart local v14       #neighbor:Lcom/android/lgesettings/widget/ChartSweepView;
    :cond_8
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 464
    .end local v14           #neighbor:Lcom/android/lgesettings/widget/ChartSweepView;
    :cond_9
    if-eqz v3, :cond_c

    .line 465
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mFollowAxis:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getTop()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/lgesettings/widget/ChartSweepView;->mTrackingStart:F

    .line 470
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    .line 471
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/lgesettings/widget/ChartSweepView;->mTouchMode:I

    .line 474
    invoke-virtual {v15}, Landroid/view/View;->isActivated()Z

    move-result v21

    if-nez v21, :cond_a

    .line 475
    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/view/View;->setActivated(Z)V

    .line 478
    :cond_a
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 468
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getLeft()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/lgesettings/widget/ChartSweepView;->mTrackingStart:F

    goto :goto_6

    .line 479
    :cond_c
    if-eqz v4, :cond_d

    .line 480
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/lgesettings/widget/ChartSweepView;->mTouchMode:I

    .line 481
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 483
    :cond_d
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/lgesettings/widget/ChartSweepView;->mTouchMode:I

    .line 484
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 488
    .end local v3           #acceptDrag:Z
    .end local v4           #acceptLabel:Z
    .end local v5           #arr$:[Lcom/android/lgesettings/widget/ChartSweepView;
    .end local v11           #eventInParent:Landroid/view/MotionEvent;
    .end local v12           #i$:I
    .end local v13           #len$:I
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mTouchMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 489
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 492
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    const/16 v22, 0x1

    invoke-interface/range {v21 .. v22}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 495
    invoke-direct/range {p0 .. p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getParentContentRect()Landroid/graphics/Rect;

    move-result-object v16

    .line 496
    .local v16, parentContent:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->computeClampRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 497
    .local v6, clampRect:Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_f

    const/16 v21, 0x1

    goto/16 :goto_0

    .line 501
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    move-object/from16 v21, v0

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    if-eqz v21, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mAxis:Lcom/android/lgesettings/widget/ChartAxis;

    move-object/from16 v21, v0

    if-nez v21, :cond_11

    .line 502
    :cond_10
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 504
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mFollowAxis:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getTop()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v10, v0

    .line 506
    .local v10, currentTargetY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mTrackingStart:F

    move/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/MotionEvent;->getRawY()F

    move-result v23

    sub-float v22, v22, v23

    add-float v18, v21, v22

    .line 508
    .local v18, requestedTargetY:F
    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v8

    .line 510
    .local v8, clampedTargetY:F
    sub-float v21, v8, v10

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->setTranslationY(F)V

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mAxis:Lcom/android/lgesettings/widget/ChartAxis;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v8, v22

    invoke-interface/range {v21 .. v22}, Lcom/android/lgesettings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v19

    .line 525
    .end local v8           #clampedTargetY:F
    .end local v10           #currentTargetY:F
    .end local v18           #requestedTargetY:F
    .local v19, value:J
    :goto_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mDragInterval:J

    move-wide/from16 v21, v0

    rem-long v21, v19, v21

    sub-long v19, v19, v21

    .line 526
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/lgesettings/widget/ChartSweepView;->setValue(J)V

    .line 528
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->dispatchOnSweep(Z)V

    .line 529
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 514
    .end local v19           #value:J
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getLeft()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v9, v0

    .line 515
    .local v9, currentTargetX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mTrackingStart:F

    move/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/MotionEvent;->getRawX()F

    move-result v23

    sub-float v22, v22, v23

    add-float v17, v21, v22

    .line 517
    .local v17, requestedTargetX:F
    iget v0, v6, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v7

    .line 519
    .local v7, clampedTargetX:F
    sub-float v21, v7, v9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->setTranslationX(F)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mAxis:Lcom/android/lgesettings/widget/ChartAxis;

    move-object/from16 v21, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v7, v22

    invoke-interface/range {v21 .. v22}, Lcom/android/lgesettings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v19

    .restart local v19       #value:J
    goto/16 :goto_7

    .line 532
    .end local v6           #clampRect:Landroid/graphics/Rect;
    .end local v7           #clampedTargetX:F
    .end local v9           #currentTargetX:F
    .end local v16           #parentContent:Landroid/graphics/Rect;
    .end local v17           #requestedTargetX:F
    .end local v19           #value:J
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mTouchMode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_14

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/widget/ChartSweepView;->performClick()Z

    .line 544
    :cond_13
    :goto_8
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/lgesettings/widget/ChartSweepView;->mTouchMode:I

    .line 545
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 534
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mTouchMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 535
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/lgesettings/widget/ChartSweepView;->mTrackingStart:F

    .line 536
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/lgesettings/widget/ChartSweepView;->mTracking:Landroid/view/MotionEvent;

    .line 537
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelValue:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/lgesettings/widget/ChartSweepView;->mValue:J

    .line 538
    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->dispatchOnSweep(Z)V

    .line 539
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->setTranslationX(F)V

    .line 540
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/lgesettings/widget/ChartSweepView;->setTranslationY(F)V

    .line 541
    invoke-virtual/range {p0 .. p0}, Lcom/android/lgesettings/widget/ChartSweepView;->requestLayout()V

    goto :goto_8

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 588
    return-void
.end method

.method public setDragInterval(J)V
    .locals 0
    .parameter "dragInterval"

    .prologue
    .line 182
    iput-wide p1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mDragInterval:J

    .line 183
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/lgesettings/widget/ChartSweepView;->setFocusable(Z)V

    .line 221
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->requestLayout()V

    .line 222
    return-void
.end method

.method public setFollowAxis(I)V
    .locals 0
    .parameter "followAxis"

    .prologue
    .line 246
    iput p1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mFollowAxis:I

    .line 247
    return-void
.end method

.method public setLabelColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 260
    iput p1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelColor:I

    .line 261
    invoke-direct {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->invalidateLabelTemplate()V

    .line 262
    return-void
.end method

.method public setLabelMinSize(I)V
    .locals 0
    .parameter "minSize"

    .prologue
    .line 250
    iput p1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelMinSize:I

    .line 251
    invoke-direct {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->invalidateLabelTemplate()V

    .line 252
    return-void
.end method

.method public setLabelTemplate(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 255
    iput p1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mLabelTemplateRes:I

    .line 256
    invoke-direct {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->invalidateLabelTemplate()V

    .line 257
    return-void
.end method

.method public setNeighborMargin(F)V
    .locals 0
    .parameter "neighborMargin"

    .prologue
    .line 402
    iput p1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mNeighborMargin:F

    .line 403
    return-void
.end method

.method public varargs setNeighbors([Lcom/android/lgesettings/widget/ChartSweepView;)V
    .locals 0
    .parameter "neighbors"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mNeighbors:[Lcom/android/lgesettings/widget/ChartSweepView;

    .line 171
    return-void
.end method

.method public setSweepDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "sweep"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 227
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/lgesettings/widget/ChartSweepView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    :cond_0
    if-eqz p1, :cond_3

    .line 231
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 232
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 235
    :cond_1
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 236
    iput-object p1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    .line 237
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweepPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 242
    :goto_1
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->invalidate()V

    .line 243
    return-void

    :cond_2
    move v0, v1

    .line 235
    goto :goto_0

    .line 239
    :cond_3
    iput-object v2, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setValidRange(JJ)V
    .locals 0
    .parameter "validAfter"
    .parameter "validBefore"

    .prologue
    .line 397
    iput-wide p1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mValidAfter:J

    .line 398
    iput-wide p3, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mValidBefore:J

    .line 399
    return-void
.end method

.method public setValidRangeDynamic(Lcom/android/lgesettings/widget/ChartSweepView;Lcom/android/lgesettings/widget/ChartSweepView;)V
    .locals 0
    .parameter "validAfter"
    .parameter "validBefore"

    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mValidAfterDynamic:Lcom/android/lgesettings/widget/ChartSweepView;

    .line 412
    iput-object p2, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mValidBeforeDynamic:Lcom/android/lgesettings/widget/ChartSweepView;

    .line 413
    return-void
.end method

.method public setValue(J)V
    .locals 0
    .parameter "value"

    .prologue
    .line 371
    iput-wide p1, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mValue:J

    .line 372
    invoke-direct {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->invalidateLabel()V

    .line 373
    return-void
.end method

.method public setVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    const/4 v1, 0x0

    .line 355
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 356
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 357
    iget-object v2, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 359
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 357
    goto :goto_0
.end method

.method public shouldAdjustAxis()I
    .locals 3

    .prologue
    .line 570
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mAxis:Lcom/android/lgesettings/widget/ChartAxis;

    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/android/lgesettings/widget/ChartAxis;->shouldAdjustAxis(J)I

    move-result v0

    return v0
.end method

.method public updateValueFromPosition()V
    .locals 5

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getParentContentRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 560
    .local v2, parentContent:Landroid/graphics/Rect;
    iget v3, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mFollowAxis:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 561
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float v1, v3, v4

    .line 562
    .local v1, effectiveY:F
    iget-object v3, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mAxis:Lcom/android/lgesettings/widget/ChartAxis;

    invoke-interface {v3, v1}, Lcom/android/lgesettings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/lgesettings/widget/ChartSweepView;->setValue(J)V

    .line 567
    .end local v1           #effectiveY:F
    :goto_0
    return-void

    .line 564
    :cond_0
    invoke-virtual {p0}, Lcom/android/lgesettings/widget/ChartSweepView;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mMargins:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 565
    .local v0, effectiveX:F
    iget-object v3, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mAxis:Lcom/android/lgesettings/widget/ChartAxis;

    invoke-interface {v3, v0}, Lcom/android/lgesettings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/lgesettings/widget/ChartSweepView;->setValue(J)V

    goto :goto_0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/lgesettings/widget/ChartSweepView;->mSweep:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
