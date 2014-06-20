.class public Lcom/android/internal/widget/LGScrollingTabContainerView;
.super Lcom/android/internal/widget/ScrollingTabContainerView;
.source "LGScrollingTabContainerView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LGScrollingTabContainerView"


# instance fields
.field private ANI_DURATION:I

.field private mAnimationLocked:Z

.field private mArrowLocated:Z

.field private mCurTabIndex:I

.field private mDestination:I

.field private mOnConfigured:Z

.field private mSelectedTabArrow:Landroid/widget/ImageView;

.field private mSource:I

.field private mTabAnim:Landroid/view/animation/Animation;

.field private mTabParentLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v4, 0x0

    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 42
    const/16 v3, 0xc8

    iput v3, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->ANI_DURATION:I

    .line 48
    iput-boolean v4, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mArrowLocated:Z

    .line 49
    iput-boolean v4, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mOnConfigured:Z

    .line 50
    iput-boolean v4, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mAnimationLocked:Z

    .line 52
    iput v4, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSource:I

    .line 53
    iput v4, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mDestination:I

    .line 61
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/internal/widget/LGScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 62
    .local v2, tapParentLayout:Landroid/widget/RelativeLayout;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iput-object v2, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabParentLayout:Landroid/widget/RelativeLayout;

    .line 67
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/LGScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, iv:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/internal/widget/LGScrollingTabContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x2020676

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 70
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 71
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 74
    .local v1, selectorLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xc

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iput-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    .line 77
    iget-object v3, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 80
    iget-object v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/LGScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 81
    iget-object v3, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabParentLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    iget-object v3, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabParentLayout:Landroid/widget/RelativeLayout;

    iget-object v4, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 84
    iget-object v3, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabParentLayout:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/LGScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/LGScrollingTabContainerView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mAnimationLocked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/widget/LGScrollingTabContainerView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mAnimationLocked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/widget/LGScrollingTabContainerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mDestination:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/LGScrollingTabContainerView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 2
    .parameter "tab"
    .parameter "position"
    .parameter "setSelected"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mArrowLocated:Z

    .line 209
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 210
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 2
    .parameter "tab"
    .parameter "setSelected"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mArrowLocated:Z

    .line 202
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 203
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mArrowLocated:Z

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mOnConfigured:Z

    .line 195
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 196
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 95
    iget-object v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget v3, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mCurTabIndex:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 98
    .local v1, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    const/4 v0, 0x0

    .line 99
    .local v0, pos:I
    iget-boolean v2, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mArrowLocated:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 101
    if-lez v0, :cond_0

    .line 102
    iget-object v2, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 103
    iget-object v2, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mArrowLocated:Z

    .line 105
    iput v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mDestination:I

    .line 108
    :cond_0
    return-void
.end method

.method public onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->onMeasure(II)V

    .line 91
    return-void
.end method

.method protected performCollapse()V
    .locals 4

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/internal/widget/LGScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabParentLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 115
    iget-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LGScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 116
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/LGScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    :cond_0
    invoke-super {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performCollapse()V

    .line 120
    return-void
.end method

.method protected performExpand()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 124
    invoke-super {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/widget/LGScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LGScrollingTabContainerView;->removeView(Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabParentLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iput-boolean v4, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mArrowLocated:Z

    .line 132
    :cond_0
    return v4
.end method

.method public removeAllTabs()V
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mArrowLocated:Z

    .line 223
    invoke-super {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 224
    return-void
.end method

.method public removeTabAt(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mArrowLocated:Z

    .line 216
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 217
    return-void
.end method

.method public setTabSelected(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 137
    invoke-super {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 140
    iput-boolean v5, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mAnimationLocked:Z

    .line 141
    iget v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mDestination:I

    iput v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSource:I

    .line 143
    iget-boolean v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mArrowLocated:Z

    if-nez v1, :cond_0

    .line 144
    iput p1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mCurTabIndex:I

    .line 187
    :goto_0
    return-void

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 149
    .local v0, tabView:Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz v0, :cond_2

    .line 151
    iget v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mCurTabIndex:I

    if-ne v1, p1, :cond_1

    .line 152
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mArrowLocated:Z

    .line 153
    iput p1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mCurTabIndex:I

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mDestination:I

    .line 159
    :cond_2
    iput p1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mCurTabIndex:I

    .line 162
    iget-object v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 164
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSource:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mDestination:I

    int-to-float v3, v3

    invoke-direct {v1, v2, v3, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabAnim:Landroid/view/animation/Animation;

    .line 165
    iget-object v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabAnim:Landroid/view/animation/Animation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 166
    iget-object v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v5}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 167
    iget-object v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabAnim:Landroid/view/animation/Animation;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 168
    iget-object v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mSelectedTabArrow:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabAnim:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 170
    iget-object v1, p0, Lcom/android/internal/widget/LGScrollingTabContainerView;->mTabAnim:Landroid/view/animation/Animation;

    new-instance v2, Lcom/android/internal/widget/LGScrollingTabContainerView$1;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LGScrollingTabContainerView$1;-><init>(Lcom/android/internal/widget/LGScrollingTabContainerView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method
