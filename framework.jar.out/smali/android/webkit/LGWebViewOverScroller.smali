.class public Landroid/webkit/LGWebViewOverScroller;
.super Landroid/widget/OverScroller;
.source "LGWebViewOverScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/LGWebViewOverScroller$OnLGWebViewScrollChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final DIRECTION_DOWN:I = 0xa

.field private static final DIRECTION_UP:I = -0xa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I


# instance fields
.field private mScrollMode:I

.field private mVelocityY:I

.field mWebViewScrollChangeListener:Landroid/webkit/LGWebViewOverScroller$OnLGWebViewScrollChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/LGWebViewOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/LGWebViewOverScroller;->mVelocityY:I

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"
    .parameter "bounceCoefficientX"
    .parameter "bounceCoefficientY"

    .prologue
    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/LGWebViewOverScroller;->mVelocityY:I

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .locals 1
    .parameter "context"
    .parameter "interpolator"
    .parameter "bounceCoefficientX"
    .parameter "bounceCoefficientY"
    .parameter "flywheel"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p5}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/LGWebViewOverScroller;->mVelocityY:I

    .line 44
    return-void
.end method

.method private setScrollMode(I)V
    .locals 1
    .parameter "scrollMode"

    .prologue
    .line 52
    iget v0, p0, Landroid/webkit/LGWebViewOverScroller;->mScrollMode:I

    if-eq v0, p1, :cond_0

    .line 53
    iput p1, p0, Landroid/webkit/LGWebViewOverScroller;->mScrollMode:I

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-super {p0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    .line 89
    .local v0, rv:Z
    iget-object v1, p0, Landroid/webkit/LGWebViewOverScroller;->mWebViewScrollChangeListener:Landroid/webkit/LGWebViewOverScroller$OnLGWebViewScrollChangeListener;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Landroid/webkit/LGWebViewOverScroller;->mWebViewScrollChangeListener:Landroid/webkit/LGWebViewOverScroller$OnLGWebViewScrollChangeListener;

    invoke-interface {v1, v0}, Landroid/webkit/LGWebViewOverScroller$OnLGWebViewScrollChangeListener;->setTitleBarAnimBlock(Z)V

    .line 91
    iget v1, p0, Landroid/webkit/LGWebViewOverScroller;->mScrollMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 92
    invoke-direct {p0, v3}, Landroid/webkit/LGWebViewOverScroller;->setScrollMode(I)V

    .line 93
    iget-object v1, p0, Landroid/webkit/LGWebViewOverScroller;->mWebViewScrollChangeListener:Landroid/webkit/LGWebViewOverScroller$OnLGWebViewScrollChangeListener;

    iget v2, p0, Landroid/webkit/LGWebViewOverScroller;->mVelocityY:I

    invoke-interface {v1, v2}, Landroid/webkit/LGWebViewOverScroller$OnLGWebViewScrollChangeListener;->onScrollFinished(I)V

    .line 94
    iput v3, p0, Landroid/webkit/LGWebViewOverScroller;->mVelocityY:I

    .line 97
    :cond_0
    return v0
.end method

.method public fling(IIIIIIIIII)V
    .locals 1
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"
    .parameter "overX"
    .parameter "overY"

    .prologue
    .line 71
    if-ne p2, p8, :cond_0

    .line 72
    const/16 v0, 0xa

    iput v0, p0, Landroid/webkit/LGWebViewOverScroller;->mVelocityY:I

    .line 76
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/LGWebViewOverScroller;->setScrollMode(I)V

    .line 77
    invoke-super/range {p0 .. p10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 78
    return-void

    .line 74
    :cond_0
    iput p4, p0, Landroid/webkit/LGWebViewOverScroller;->mVelocityY:I

    goto :goto_0
.end method

.method public setOnLGWebViewScrollChangeListener(Landroid/webkit/LGWebViewOverScroller$OnLGWebViewScrollChangeListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 47
    iput-object p1, p0, Landroid/webkit/LGWebViewOverScroller;->mWebViewScrollChangeListener:Landroid/webkit/LGWebViewOverScroller$OnLGWebViewScrollChangeListener;

    .line 48
    iget-object v0, p0, Landroid/webkit/LGWebViewOverScroller;->mWebViewScrollChangeListener:Landroid/webkit/LGWebViewOverScroller$OnLGWebViewScrollChangeListener;

    invoke-interface {v0, p0}, Landroid/webkit/LGWebViewOverScroller$OnLGWebViewScrollChangeListener;->onScrollerSetted(Landroid/widget/OverScroller;)V

    .line 49
    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 1
    .parameter "startX"
    .parameter "startY"
    .parameter "minX"
    .parameter "maxX"
    .parameter "minY"
    .parameter "maxY"

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/LGWebViewOverScroller;->setScrollMode(I)V

    .line 83
    invoke-super/range {p0 .. p6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    return v0
.end method

.method public startScroll(IIII)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 59
    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/LGWebViewOverScroller;->startScroll(IIIII)V

    .line 60
    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1
    .parameter "startX"
    .parameter "startY"
    .parameter "dx"
    .parameter "dy"
    .parameter "duration"

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/LGWebViewOverScroller;->setScrollMode(I)V

    .line 65
    invoke-super/range {p0 .. p5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 66
    return-void
.end method
